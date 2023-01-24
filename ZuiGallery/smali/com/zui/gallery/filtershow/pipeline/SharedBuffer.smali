.class public Lcom/zui/gallery/filtershow/pipeline/SharedBuffer;
.super Ljava/lang/Object;
.source "SharedBuffer.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "SharedBuffer"


# instance fields
.field private volatile mConsumer:Lcom/zui/gallery/filtershow/pipeline/Buffer;

.field private volatile mIntermediate:Lcom/zui/gallery/filtershow/pipeline/Buffer;

.field private volatile mNeedsRepaint:Z

.field private volatile mNeedsSwap:Z

.field private volatile mProducer:Lcom/zui/gallery/filtershow/pipeline/Buffer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/SharedBuffer;->mProducer:Lcom/zui/gallery/filtershow/pipeline/Buffer;

    .line 26
    iput-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/SharedBuffer;->mConsumer:Lcom/zui/gallery/filtershow/pipeline/Buffer;

    .line 27
    iput-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/SharedBuffer;->mIntermediate:Lcom/zui/gallery/filtershow/pipeline/Buffer;

    const/4 v0, 0x0

    .line 29
    iput-boolean v0, p0, Lcom/zui/gallery/filtershow/pipeline/SharedBuffer;->mNeedsSwap:Z

    const/4 v0, 0x1

    .line 30
    iput-boolean v0, p0, Lcom/zui/gallery/filtershow/pipeline/SharedBuffer;->mNeedsRepaint:Z

    return-void
.end method


# virtual methods
.method public declared-synchronized checkRepaintNeeded()Z
    .locals 2

    monitor-enter p0

    .line 75
    :try_start_0
    iget-boolean v0, p0, Lcom/zui/gallery/filtershow/pipeline/SharedBuffer;->mNeedsRepaint:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 76
    iput-boolean v1, p0, Lcom/zui/gallery/filtershow/pipeline/SharedBuffer;->mNeedsRepaint:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    .line 77
    monitor-exit p0

    return v0

    .line 79
    :cond_0
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getConsumer()Lcom/zui/gallery/filtershow/pipeline/Buffer;
    .locals 1

    monitor-enter p0

    .line 50
    :try_start_0
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/SharedBuffer;->mConsumer:Lcom/zui/gallery/filtershow/pipeline/Buffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getProducer()Lcom/zui/gallery/filtershow/pipeline/Buffer;
    .locals 1

    monitor-enter p0

    .line 46
    :try_start_0
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/SharedBuffer;->mProducer:Lcom/zui/gallery/filtershow/pipeline/Buffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized invalidate()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 71
    :try_start_0
    iput-boolean v0, p0, Lcom/zui/gallery/filtershow/pipeline/SharedBuffer;->mNeedsRepaint:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setProducer(Landroid/graphics/Bitmap;)V
    .locals 1

    monitor-enter p0

    .line 33
    :try_start_0
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/SharedBuffer;->mProducer:Lcom/zui/gallery/filtershow/pipeline/Buffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/SharedBuffer;->mProducer:Lcom/zui/gallery/filtershow/pipeline/Buffer;

    .line 34
    invoke-virtual {v0, p1}, Lcom/zui/gallery/filtershow/pipeline/Buffer;->isSameSize(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/SharedBuffer;->mProducer:Lcom/zui/gallery/filtershow/pipeline/Buffer;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/pipeline/Buffer;->remove()V

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/SharedBuffer;->mProducer:Lcom/zui/gallery/filtershow/pipeline/Buffer;

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/SharedBuffer;->mProducer:Lcom/zui/gallery/filtershow/pipeline/Buffer;

    if-nez v0, :cond_1

    .line 39
    new-instance v0, Lcom/zui/gallery/filtershow/pipeline/Buffer;

    invoke-direct {v0, p1}, Lcom/zui/gallery/filtershow/pipeline/Buffer;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/SharedBuffer;->mProducer:Lcom/zui/gallery/filtershow/pipeline/Buffer;

    goto :goto_0

    .line 41
    :cond_1
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/SharedBuffer;->mProducer:Lcom/zui/gallery/filtershow/pipeline/Buffer;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/filtershow/pipeline/Buffer;->useBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized swapConsumerIfNeeded()V
    .locals 2

    monitor-enter p0

    .line 61
    :try_start_0
    iget-boolean v0, p0, Lcom/zui/gallery/filtershow/pipeline/SharedBuffer;->mNeedsSwap:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 62
    monitor-exit p0

    return-void

    .line 64
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/SharedBuffer;->mIntermediate:Lcom/zui/gallery/filtershow/pipeline/Buffer;

    .line 65
    iget-object v1, p0, Lcom/zui/gallery/filtershow/pipeline/SharedBuffer;->mConsumer:Lcom/zui/gallery/filtershow/pipeline/Buffer;

    iput-object v1, p0, Lcom/zui/gallery/filtershow/pipeline/SharedBuffer;->mIntermediate:Lcom/zui/gallery/filtershow/pipeline/Buffer;

    .line 66
    iput-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/SharedBuffer;->mConsumer:Lcom/zui/gallery/filtershow/pipeline/Buffer;

    const/4 v0, 0x0

    .line 67
    iput-boolean v0, p0, Lcom/zui/gallery/filtershow/pipeline/SharedBuffer;->mNeedsSwap:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized swapProducer()V
    .locals 2

    monitor-enter p0

    .line 54
    :try_start_0
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/SharedBuffer;->mIntermediate:Lcom/zui/gallery/filtershow/pipeline/Buffer;

    .line 55
    iget-object v1, p0, Lcom/zui/gallery/filtershow/pipeline/SharedBuffer;->mProducer:Lcom/zui/gallery/filtershow/pipeline/Buffer;

    iput-object v1, p0, Lcom/zui/gallery/filtershow/pipeline/SharedBuffer;->mIntermediate:Lcom/zui/gallery/filtershow/pipeline/Buffer;

    .line 56
    iput-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/SharedBuffer;->mProducer:Lcom/zui/gallery/filtershow/pipeline/Buffer;

    const/4 v0, 0x1

    .line 57
    iput-boolean v0, p0, Lcom/zui/gallery/filtershow/pipeline/SharedBuffer;->mNeedsSwap:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
