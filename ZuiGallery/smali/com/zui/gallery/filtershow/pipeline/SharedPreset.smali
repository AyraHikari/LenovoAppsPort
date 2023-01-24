.class public Lcom/zui/gallery/filtershow/pipeline/SharedPreset;
.super Ljava/lang/Object;
.source "SharedPreset.java"


# instance fields
.field private volatile mConsumerPreset:Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

.field private volatile mHasNewContent:Z

.field private volatile mIntermediatePreset:Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

.field private volatile mProducerPreset:Lcom/zui/gallery/filtershow/pipeline/ImagePreset;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/SharedPreset;->mProducerPreset:Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    .line 22
    iput-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/SharedPreset;->mConsumerPreset:Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    .line 23
    iput-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/SharedPreset;->mIntermediatePreset:Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/zui/gallery/filtershow/pipeline/SharedPreset;->mHasNewContent:Z

    return-void
.end method


# virtual methods
.method public declared-synchronized dequeuePreset()Lcom/zui/gallery/filtershow/pipeline/ImagePreset;
    .locals 2

    monitor-enter p0

    .line 39
    :try_start_0
    iget-boolean v0, p0, Lcom/zui/gallery/filtershow/pipeline/SharedPreset;->mHasNewContent:Z

    if-nez v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/SharedPreset;->mConsumerPreset:Lcom/zui/gallery/filtershow/pipeline/ImagePreset;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 42
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/SharedPreset;->mConsumerPreset:Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    .line 43
    iget-object v1, p0, Lcom/zui/gallery/filtershow/pipeline/SharedPreset;->mIntermediatePreset:Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    iput-object v1, p0, Lcom/zui/gallery/filtershow/pipeline/SharedPreset;->mConsumerPreset:Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    .line 44
    iput-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/SharedPreset;->mIntermediatePreset:Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lcom/zui/gallery/filtershow/pipeline/SharedPreset;->mHasNewContent:Z

    .line 46
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/SharedPreset;->mConsumerPreset:Lcom/zui/gallery/filtershow/pipeline/ImagePreset;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized enqueuePreset(Lcom/zui/gallery/filtershow/pipeline/ImagePreset;)V
    .locals 1

    monitor-enter p0

    .line 27
    :try_start_0
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/SharedPreset;->mProducerPreset:Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/SharedPreset;->mProducerPreset:Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->same(Lcom/zui/gallery/filtershow/pipeline/ImagePreset;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/SharedPreset;->mProducerPreset:Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->updateWith(Lcom/zui/gallery/filtershow/pipeline/ImagePreset;)V

    goto :goto_1

    .line 28
    :cond_1
    :goto_0
    new-instance v0, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    invoke-direct {v0, p1}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;-><init>(Lcom/zui/gallery/filtershow/pipeline/ImagePreset;)V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/SharedPreset;->mProducerPreset:Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    .line 32
    :goto_1
    iget-object p1, p0, Lcom/zui/gallery/filtershow/pipeline/SharedPreset;->mIntermediatePreset:Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    .line 33
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/SharedPreset;->mProducerPreset:Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    iput-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/SharedPreset;->mIntermediatePreset:Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    .line 34
    iput-object p1, p0, Lcom/zui/gallery/filtershow/pipeline/SharedPreset;->mProducerPreset:Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    const/4 p1, 0x1

    .line 35
    iput-boolean p1, p0, Lcom/zui/gallery/filtershow/pipeline/SharedPreset;->mHasNewContent:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
