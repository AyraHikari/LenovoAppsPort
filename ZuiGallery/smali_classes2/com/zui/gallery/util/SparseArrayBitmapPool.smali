.class public Lcom/zui/gallery/util/SparseArrayBitmapPool;
.super Ljava/lang/Object;
.source "SparseArrayBitmapPool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/util/SparseArrayBitmapPool$Node;
    }
.end annotation


# instance fields
.field private mCapacityBytes:I

.field private mNodePool:Landroid/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$Pool<",
            "Lcom/zui/gallery/util/SparseArrayBitmapPool$Node;",
            ">;"
        }
    .end annotation
.end field

.field private mPoolNodesHead:Lcom/zui/gallery/util/SparseArrayBitmapPool$Node;

.field private mPoolNodesTail:Lcom/zui/gallery/util/SparseArrayBitmapPool$Node;

.field private mSizeBytes:I

.field private mStore:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/zui/gallery/util/SparseArrayBitmapPool$Node;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILandroid/util/Pools$Pool;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/Pools$Pool<",
            "Lcom/zui/gallery/util/SparseArrayBitmapPool$Node;",
            ">;)V"
        }
    .end annotation

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/util/SparseArrayBitmapPool;->mStore:Landroid/util/SparseArray;

    const/4 v0, 0x0

    .line 34
    iput v0, p0, Lcom/zui/gallery/util/SparseArrayBitmapPool;->mSizeBytes:I

    const/4 v0, 0x0

    .line 37
    iput-object v0, p0, Lcom/zui/gallery/util/SparseArrayBitmapPool;->mPoolNodesHead:Lcom/zui/gallery/util/SparseArrayBitmapPool$Node;

    .line 38
    iput-object v0, p0, Lcom/zui/gallery/util/SparseArrayBitmapPool;->mPoolNodesTail:Lcom/zui/gallery/util/SparseArrayBitmapPool$Node;

    .line 59
    iput p1, p0, Lcom/zui/gallery/util/SparseArrayBitmapPool;->mCapacityBytes:I

    if-nez p2, :cond_0

    .line 61
    new-instance p1, Landroid/util/Pools$SimplePool;

    const/16 p2, 0x20

    invoke-direct {p1, p2}, Landroid/util/Pools$SimplePool;-><init>(I)V

    iput-object p1, p0, Lcom/zui/gallery/util/SparseArrayBitmapPool;->mNodePool:Landroid/util/Pools$Pool;

    goto :goto_0

    .line 63
    :cond_0
    iput-object p2, p0, Lcom/zui/gallery/util/SparseArrayBitmapPool;->mNodePool:Landroid/util/Pools$Pool;

    :goto_0
    return-void
.end method

.method private freeUpCapacity(I)V
    .locals 2

    .line 78
    iget v0, p0, Lcom/zui/gallery/util/SparseArrayBitmapPool;->mCapacityBytes:I

    sub-int/2addr v0, p1

    .line 80
    :goto_0
    iget-object p1, p0, Lcom/zui/gallery/util/SparseArrayBitmapPool;->mPoolNodesTail:Lcom/zui/gallery/util/SparseArrayBitmapPool$Node;

    if-eqz p1, :cond_0

    iget v1, p0, Lcom/zui/gallery/util/SparseArrayBitmapPool;->mSizeBytes:I

    if-le v1, v0, :cond_0

    const/4 v1, 0x1

    .line 81
    invoke-direct {p0, p1, v1}, Lcom/zui/gallery/util/SparseArrayBitmapPool;->unlinkAndRecycleNode(Lcom/zui/gallery/util/SparseArrayBitmapPool$Node;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private unlinkAndRecycleNode(Lcom/zui/gallery/util/SparseArrayBitmapPool$Node;Z)V
    .locals 3

    .line 87
    iget-object v0, p1, Lcom/zui/gallery/util/SparseArrayBitmapPool$Node;->prevInBucket:Lcom/zui/gallery/util/SparseArrayBitmapPool$Node;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p1, Lcom/zui/gallery/util/SparseArrayBitmapPool$Node;->prevInBucket:Lcom/zui/gallery/util/SparseArrayBitmapPool$Node;

    iget-object v1, p1, Lcom/zui/gallery/util/SparseArrayBitmapPool$Node;->nextInBucket:Lcom/zui/gallery/util/SparseArrayBitmapPool$Node;

    iput-object v1, v0, Lcom/zui/gallery/util/SparseArrayBitmapPool$Node;->nextInBucket:Lcom/zui/gallery/util/SparseArrayBitmapPool$Node;

    goto :goto_0

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/util/SparseArrayBitmapPool;->mStore:Landroid/util/SparseArray;

    iget-object v1, p1, Lcom/zui/gallery/util/SparseArrayBitmapPool$Node;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p1, Lcom/zui/gallery/util/SparseArrayBitmapPool$Node;->nextInBucket:Lcom/zui/gallery/util/SparseArrayBitmapPool$Node;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 94
    :goto_0
    iget-object v0, p1, Lcom/zui/gallery/util/SparseArrayBitmapPool$Node;->nextInBucket:Lcom/zui/gallery/util/SparseArrayBitmapPool$Node;

    if-eqz v0, :cond_1

    .line 96
    iget-object v0, p1, Lcom/zui/gallery/util/SparseArrayBitmapPool$Node;->nextInBucket:Lcom/zui/gallery/util/SparseArrayBitmapPool$Node;

    iget-object v1, p1, Lcom/zui/gallery/util/SparseArrayBitmapPool$Node;->prevInBucket:Lcom/zui/gallery/util/SparseArrayBitmapPool$Node;

    iput-object v1, v0, Lcom/zui/gallery/util/SparseArrayBitmapPool$Node;->prevInBucket:Lcom/zui/gallery/util/SparseArrayBitmapPool$Node;

    .line 100
    :cond_1
    iget-object v0, p1, Lcom/zui/gallery/util/SparseArrayBitmapPool$Node;->prevInPool:Lcom/zui/gallery/util/SparseArrayBitmapPool$Node;

    if-eqz v0, :cond_2

    .line 102
    iget-object v0, p1, Lcom/zui/gallery/util/SparseArrayBitmapPool$Node;->prevInPool:Lcom/zui/gallery/util/SparseArrayBitmapPool$Node;

    iget-object v1, p1, Lcom/zui/gallery/util/SparseArrayBitmapPool$Node;->nextInPool:Lcom/zui/gallery/util/SparseArrayBitmapPool$Node;

    iput-object v1, v0, Lcom/zui/gallery/util/SparseArrayBitmapPool$Node;->nextInPool:Lcom/zui/gallery/util/SparseArrayBitmapPool$Node;

    goto :goto_1

    .line 105
    :cond_2
    iget-object v0, p1, Lcom/zui/gallery/util/SparseArrayBitmapPool$Node;->nextInPool:Lcom/zui/gallery/util/SparseArrayBitmapPool$Node;

    iput-object v0, p0, Lcom/zui/gallery/util/SparseArrayBitmapPool;->mPoolNodesHead:Lcom/zui/gallery/util/SparseArrayBitmapPool$Node;

    .line 107
    :goto_1
    iget-object v0, p1, Lcom/zui/gallery/util/SparseArrayBitmapPool$Node;->nextInPool:Lcom/zui/gallery/util/SparseArrayBitmapPool$Node;

    if-eqz v0, :cond_3

    .line 109
    iget-object v0, p1, Lcom/zui/gallery/util/SparseArrayBitmapPool$Node;->nextInPool:Lcom/zui/gallery/util/SparseArrayBitmapPool$Node;

    iget-object v1, p1, Lcom/zui/gallery/util/SparseArrayBitmapPool$Node;->prevInPool:Lcom/zui/gallery/util/SparseArrayBitmapPool$Node;

    iput-object v1, v0, Lcom/zui/gallery/util/SparseArrayBitmapPool$Node;->prevInPool:Lcom/zui/gallery/util/SparseArrayBitmapPool$Node;

    goto :goto_2

    .line 112
    :cond_3
    iget-object v0, p1, Lcom/zui/gallery/util/SparseArrayBitmapPool$Node;->prevInPool:Lcom/zui/gallery/util/SparseArrayBitmapPool$Node;

    iput-object v0, p0, Lcom/zui/gallery/util/SparseArrayBitmapPool;->mPoolNodesTail:Lcom/zui/gallery/util/SparseArrayBitmapPool$Node;

    :goto_2
    const/4 v0, 0x0

    .line 116
    iput-object v0, p1, Lcom/zui/gallery/util/SparseArrayBitmapPool$Node;->nextInBucket:Lcom/zui/gallery/util/SparseArrayBitmapPool$Node;

    .line 117
    iput-object v0, p1, Lcom/zui/gallery/util/SparseArrayBitmapPool$Node;->nextInPool:Lcom/zui/gallery/util/SparseArrayBitmapPool$Node;

    .line 118
    iput-object v0, p1, Lcom/zui/gallery/util/SparseArrayBitmapPool$Node;->prevInBucket:Lcom/zui/gallery/util/SparseArrayBitmapPool$Node;

    .line 119
    iput-object v0, p1, Lcom/zui/gallery/util/SparseArrayBitmapPool$Node;->prevInPool:Lcom/zui/gallery/util/SparseArrayBitmapPool$Node;

    .line 120
    iget v1, p0, Lcom/zui/gallery/util/SparseArrayBitmapPool;->mSizeBytes:I

    iget-object v2, p1, Lcom/zui/gallery/util/SparseArrayBitmapPool$Node;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/zui/gallery/util/SparseArrayBitmapPool;->mSizeBytes:I

    if-eqz p2, :cond_4

    .line 121
    iget-object p2, p1, Lcom/zui/gallery/util/SparseArrayBitmapPool$Node;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    .line 122
    :cond_4
    iput-object v0, p1, Lcom/zui/gallery/util/SparseArrayBitmapPool$Node;->bitmap:Landroid/graphics/Bitmap;

    .line 123
    iget-object p2, p0, Lcom/zui/gallery/util/SparseArrayBitmapPool;->mNodePool:Landroid/util/Pools$Pool;

    invoke-interface {p2, p1}, Landroid/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 1

    monitor-enter p0

    .line 210
    :try_start_0
    iget v0, p0, Lcom/zui/gallery/util/SparseArrayBitmapPool;->mCapacityBytes:I

    invoke-direct {p0, v0}, Lcom/zui/gallery/util/SparseArrayBitmapPool;->freeUpCapacity(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get(II)Landroid/graphics/Bitmap;
    .locals 1

    monitor-enter p0

    .line 144
    :try_start_0
    iget-object v0, p0, Lcom/zui/gallery/util/SparseArrayBitmapPool;->mStore:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/util/SparseArrayBitmapPool$Node;

    :goto_0
    if-eqz p1, :cond_1

    .line 150
    iget-object v0, p1, Lcom/zui/gallery/util/SparseArrayBitmapPool$Node;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-ne v0, p2, :cond_0

    .line 151
    iget-object p2, p1, Lcom/zui/gallery/util/SparseArrayBitmapPool$Node;->bitmap:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    .line 152
    invoke-direct {p0, p1, v0}, Lcom/zui/gallery/util/SparseArrayBitmapPool;->unlinkAndRecycleNode(Lcom/zui/gallery/util/SparseArrayBitmapPool$Node;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    monitor-exit p0

    return-object p2

    .line 155
    :cond_0
    :try_start_1
    iget-object p1, p1, Lcom/zui/gallery/util/SparseArrayBitmapPool$Node;->nextInBucket:Lcom/zui/gallery/util/SparseArrayBitmapPool$Node;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 157
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getCapacity()I
    .locals 1

    monitor-enter p0

    .line 130
    :try_start_0
    iget v0, p0, Lcom/zui/gallery/util/SparseArrayBitmapPool;->mCapacityBytes:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSize()I
    .locals 1

    monitor-enter p0

    .line 137
    :try_start_0
    iget v0, p0, Lcom/zui/gallery/util/SparseArrayBitmapPool;->mSizeBytes:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized put(Landroid/graphics/Bitmap;)Z
    .locals 3

    monitor-enter p0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 166
    monitor-exit p0

    return p1

    .line 170
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    .line 171
    invoke-direct {p0, v0}, Lcom/zui/gallery/util/SparseArrayBitmapPool;->freeUpCapacity(I)V

    .line 173
    iget-object v1, p0, Lcom/zui/gallery/util/SparseArrayBitmapPool;->mNodePool:Landroid/util/Pools$Pool;

    invoke-interface {v1}, Landroid/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/util/SparseArrayBitmapPool$Node;

    if-nez v1, :cond_1

    .line 175
    new-instance v1, Lcom/zui/gallery/util/SparseArrayBitmapPool$Node;

    invoke-direct {v1}, Lcom/zui/gallery/util/SparseArrayBitmapPool$Node;-><init>()V

    .line 177
    :cond_1
    iput-object p1, v1, Lcom/zui/gallery/util/SparseArrayBitmapPool$Node;->bitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    .line 181
    iput-object v2, v1, Lcom/zui/gallery/util/SparseArrayBitmapPool$Node;->prevInBucket:Lcom/zui/gallery/util/SparseArrayBitmapPool$Node;

    .line 182
    iput-object v2, v1, Lcom/zui/gallery/util/SparseArrayBitmapPool$Node;->prevInPool:Lcom/zui/gallery/util/SparseArrayBitmapPool$Node;

    .line 183
    iget-object v2, p0, Lcom/zui/gallery/util/SparseArrayBitmapPool;->mPoolNodesHead:Lcom/zui/gallery/util/SparseArrayBitmapPool$Node;

    iput-object v2, v1, Lcom/zui/gallery/util/SparseArrayBitmapPool$Node;->nextInPool:Lcom/zui/gallery/util/SparseArrayBitmapPool$Node;

    .line 184
    iput-object v1, p0, Lcom/zui/gallery/util/SparseArrayBitmapPool;->mPoolNodesHead:Lcom/zui/gallery/util/SparseArrayBitmapPool$Node;

    .line 187
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    .line 188
    iget-object v2, p0, Lcom/zui/gallery/util/SparseArrayBitmapPool;->mStore:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/gallery/util/SparseArrayBitmapPool$Node;

    iput-object v2, v1, Lcom/zui/gallery/util/SparseArrayBitmapPool$Node;->nextInBucket:Lcom/zui/gallery/util/SparseArrayBitmapPool$Node;

    .line 189
    iget-object v2, v1, Lcom/zui/gallery/util/SparseArrayBitmapPool$Node;->nextInBucket:Lcom/zui/gallery/util/SparseArrayBitmapPool$Node;

    if-eqz v2, :cond_2

    .line 191
    iget-object v2, v1, Lcom/zui/gallery/util/SparseArrayBitmapPool$Node;->nextInBucket:Lcom/zui/gallery/util/SparseArrayBitmapPool$Node;

    iput-object v1, v2, Lcom/zui/gallery/util/SparseArrayBitmapPool$Node;->prevInBucket:Lcom/zui/gallery/util/SparseArrayBitmapPool$Node;

    .line 193
    :cond_2
    iget-object v2, p0, Lcom/zui/gallery/util/SparseArrayBitmapPool;->mStore:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 195
    iget-object p1, v1, Lcom/zui/gallery/util/SparseArrayBitmapPool$Node;->nextInPool:Lcom/zui/gallery/util/SparseArrayBitmapPool$Node;

    if-nez p1, :cond_3

    .line 197
    iput-object v1, p0, Lcom/zui/gallery/util/SparseArrayBitmapPool;->mPoolNodesTail:Lcom/zui/gallery/util/SparseArrayBitmapPool$Node;

    goto :goto_0

    .line 199
    :cond_3
    iget-object p1, v1, Lcom/zui/gallery/util/SparseArrayBitmapPool$Node;->nextInPool:Lcom/zui/gallery/util/SparseArrayBitmapPool$Node;

    iput-object v1, p1, Lcom/zui/gallery/util/SparseArrayBitmapPool$Node;->prevInPool:Lcom/zui/gallery/util/SparseArrayBitmapPool$Node;

    .line 201
    :goto_0
    iget p1, p0, Lcom/zui/gallery/util/SparseArrayBitmapPool;->mSizeBytes:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/zui/gallery/util/SparseArrayBitmapPool;->mSizeBytes:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 202
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setCapacity(I)V
    .locals 0

    monitor-enter p0

    .line 71
    :try_start_0
    iput p1, p0, Lcom/zui/gallery/util/SparseArrayBitmapPool;->mCapacityBytes:I

    const/4 p1, 0x0

    .line 74
    invoke-direct {p0, p1}, Lcom/zui/gallery/util/SparseArrayBitmapPool;->freeUpCapacity(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
