.class public Landroidx/renderscript/BaseObj;
.super Ljava/lang/Object;
.source "BaseObj.java"


# instance fields
.field private mDestroyed:Z

.field private mID:I

.field mRS:Landroidx/renderscript/RenderScript;


# direct methods
.method constructor <init>(ILandroidx/renderscript/RenderScript;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-virtual {p2}, Landroidx/renderscript/RenderScript;->validate()V

    .line 31
    iput-object p2, p0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 32
    iput p1, p0, Landroidx/renderscript/BaseObj;->mID:I

    const/4 p1, 0x0

    .line 33
    iput-boolean p1, p0, Landroidx/renderscript/BaseObj;->mDestroyed:Z

    return-void
.end method

.method private helpDestroy()V
    .locals 4

    .line 82
    monitor-enter p0

    .line 83
    :try_start_0
    iget-boolean v0, p0, Landroidx/renderscript/BaseObj;->mDestroyed:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 85
    iput-boolean v1, p0, Landroidx/renderscript/BaseObj;->mDestroyed:Z

    goto :goto_0

    :cond_0
    move v1, v2

    .line 82
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    .line 91
    iget-object v0, p0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    iget-object v0, v0, Landroidx/renderscript/RenderScript;->mRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    .line 92
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 93
    iget-object v1, p0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v1}, Landroidx/renderscript/RenderScript;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 94
    iget-object v1, p0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    iget v3, p0, Landroidx/renderscript/BaseObj;->mID:I

    invoke-virtual {v1, v3}, Landroidx/renderscript/RenderScript;->nObjDestroy(I)V

    .line 96
    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    const/4 v0, 0x0

    .line 97
    iput-object v0, p0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 98
    iput v2, p0, Landroidx/renderscript/BaseObj;->mID:I

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    .line 82
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method checkValid()V
    .locals 2

    .line 71
    iget v0, p0, Landroidx/renderscript/BaseObj;->mID:I

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/renderscript/BaseObj;->getNObj()Landroid/renderscript/BaseObj;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 72
    :cond_0
    new-instance v0, Landroidx/renderscript/RSIllegalArgumentException;

    const-string v1, "Invalid object."

    invoke-direct {v0, v1}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public destroy()V
    .locals 2

    .line 114
    iget-boolean v0, p0, Landroidx/renderscript/BaseObj;->mDestroyed:Z

    if-nez v0, :cond_0

    .line 117
    invoke-direct {p0}, Landroidx/renderscript/BaseObj;->helpDestroy()V

    return-void

    .line 115
    :cond_0
    new-instance v0, Landroidx/renderscript/RSInvalidStateException;

    const-string v1, "Object already destroyed."

    invoke-direct {v0, v1}, Landroidx/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 147
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    .line 151
    :cond_2
    sget-boolean v2, Landroidx/renderscript/RenderScript;->isNative:Z

    if-eqz v2, :cond_3

    .line 152
    iget-object v0, p0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    check-cast v0, Landroidx/renderscript/RenderScriptThunker;

    invoke-virtual {v0, p0, p1}, Landroidx/renderscript/RenderScriptThunker;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 155
    :cond_3
    check-cast p1, Landroidx/renderscript/BaseObj;

    .line 156
    iget v2, p0, Landroidx/renderscript/BaseObj;->mID:I

    iget p1, p1, Landroidx/renderscript/BaseObj;->mID:I

    if-ne v2, p1, :cond_4

    return v0

    :cond_4
    return v1
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 104
    invoke-direct {p0}, Landroidx/renderscript/BaseObj;->helpDestroy()V

    .line 105
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method getID(Landroidx/renderscript/RenderScript;)I
    .locals 1

    .line 53
    iget-object v0, p0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 54
    iget-boolean v0, p0, Landroidx/renderscript/BaseObj;->mDestroyed:Z

    if-nez v0, :cond_3

    .line 57
    iget v0, p0, Landroidx/renderscript/BaseObj;->mID:I

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    .line 60
    iget-object v0, p0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 61
    :cond_0
    new-instance p1, Landroidx/renderscript/RSInvalidStateException;

    const-string/jumbo v0, "using object with mismatched context."

    invoke-direct {p1, v0}, Landroidx/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 63
    :cond_1
    :goto_0
    iget p1, p0, Landroidx/renderscript/BaseObj;->mID:I

    return p1

    .line 58
    :cond_2
    new-instance p1, Landroidx/renderscript/RSRuntimeException;

    const-string v0, "Internal error: Object id 0."

    invoke-direct {p1, v0}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 55
    :cond_3
    new-instance p1, Landroidx/renderscript/RSInvalidStateException;

    const-string/jumbo v0, "using a destroyed object."

    invoke-direct {p1, v0}, Landroidx/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method getNObj()Landroid/renderscript/BaseObj;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 127
    iget v0, p0, Landroidx/renderscript/BaseObj;->mID:I

    return v0
.end method

.method setID(I)V
    .locals 1

    .line 37
    iget v0, p0, Landroidx/renderscript/BaseObj;->mID:I

    if-nez v0, :cond_0

    .line 40
    iput p1, p0, Landroidx/renderscript/BaseObj;->mID:I

    return-void

    .line 38
    :cond_0
    new-instance p1, Landroidx/renderscript/RSRuntimeException;

    const-string v0, "Internal Error, reset of object ID."

    invoke-direct {p1, v0}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
