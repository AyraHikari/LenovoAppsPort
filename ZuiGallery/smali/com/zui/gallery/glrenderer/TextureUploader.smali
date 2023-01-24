.class public Lcom/zui/gallery/glrenderer/TextureUploader;
.super Ljava/lang/Object;
.source "TextureUploader.java"

# interfaces
.implements Lcom/zui/gallery/ui/GLRoot$OnGLIdleListener;


# static fields
.field private static final INIT_CAPACITY:I = 0x40

.field private static final QUOTA_PER_FRAME:I = 0x1


# instance fields
.field private final mBgTextures:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/zui/gallery/glrenderer/UploadedTexture;",
            ">;"
        }
    .end annotation
.end field

.field private final mFgTextures:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/zui/gallery/glrenderer/UploadedTexture;",
            ">;"
        }
    .end annotation
.end field

.field private final mGLRoot:Lcom/zui/gallery/ui/GLRoot;

.field private volatile mIsQueued:Z


# direct methods
.method public constructor <init>(Lcom/zui/gallery/ui/GLRoot;)V
    .locals 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayDeque;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lcom/zui/gallery/glrenderer/TextureUploader;->mFgTextures:Ljava/util/ArrayDeque;

    .line 30
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lcom/zui/gallery/glrenderer/TextureUploader;->mBgTextures:Ljava/util/ArrayDeque;

    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lcom/zui/gallery/glrenderer/TextureUploader;->mIsQueued:Z

    .line 36
    iput-object p1, p0, Lcom/zui/gallery/glrenderer/TextureUploader;->mGLRoot:Lcom/zui/gallery/ui/GLRoot;

    return-void
.end method

.method private queueSelfIfNeed()V
    .locals 1

    .line 50
    iget-boolean v0, p0, Lcom/zui/gallery/glrenderer/TextureUploader;->mIsQueued:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 51
    iput-boolean v0, p0, Lcom/zui/gallery/glrenderer/TextureUploader;->mIsQueued:Z

    .line 52
    iget-object v0, p0, Lcom/zui/gallery/glrenderer/TextureUploader;->mGLRoot:Lcom/zui/gallery/ui/GLRoot;

    invoke-interface {v0, p0}, Lcom/zui/gallery/ui/GLRoot;->addOnGLIdleListener(Lcom/zui/gallery/ui/GLRoot$OnGLIdleListener;)V

    return-void
.end method

.method private upload(Lcom/zui/gallery/glrenderer/GLCanvas;Ljava/util/ArrayDeque;IZ)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zui/gallery/glrenderer/GLCanvas;",
            "Ljava/util/ArrayDeque<",
            "Lcom/zui/gallery/glrenderer/UploadedTexture;",
            ">;IZ)I"
        }
    .end annotation

    :goto_0
    if-lez p3, :cond_3

    .line 73
    monitor-enter p0

    .line 74
    :try_start_0
    invoke-virtual {p2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit p0

    goto :goto_1

    .line 75
    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/glrenderer/UploadedTexture;

    const/4 v1, 0x0

    .line 76
    invoke-virtual {v0, v1}, Lcom/zui/gallery/glrenderer/UploadedTexture;->setIsUploading(Z)V

    .line 77
    invoke-virtual {v0}, Lcom/zui/gallery/glrenderer/UploadedTexture;->isContentValid()Z

    move-result v2

    if-eqz v2, :cond_1

    monitor-exit p0

    goto :goto_0

    .line 81
    :cond_1
    invoke-virtual {v0, p1}, Lcom/zui/gallery/glrenderer/UploadedTexture;->updateContent(Lcom/zui/gallery/glrenderer/GLCanvas;)V

    .line 82
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p4, :cond_2

    .line 88
    invoke-virtual {v0, p1, v1, v1}, Lcom/zui/gallery/glrenderer/UploadedTexture;->draw(Lcom/zui/gallery/glrenderer/GLCanvas;II)V

    :cond_2
    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 82
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_3
    :goto_1
    return p3
.end method


# virtual methods
.method public declared-synchronized addBgTexture(Lcom/zui/gallery/glrenderer/UploadedTexture;)V
    .locals 1

    monitor-enter p0

    .line 56
    :try_start_0
    invoke-virtual {p1}, Lcom/zui/gallery/glrenderer/UploadedTexture;->isContentValid()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    .line 57
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/zui/gallery/glrenderer/TextureUploader;->mBgTextures:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 58
    invoke-virtual {p1, v0}, Lcom/zui/gallery/glrenderer/UploadedTexture;->setIsUploading(Z)V

    .line 59
    invoke-direct {p0}, Lcom/zui/gallery/glrenderer/TextureUploader;->queueSelfIfNeed()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addFgTexture(Lcom/zui/gallery/glrenderer/UploadedTexture;)V
    .locals 1

    monitor-enter p0

    .line 63
    :try_start_0
    invoke-virtual {p1}, Lcom/zui/gallery/glrenderer/UploadedTexture;->isContentValid()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    .line 64
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/zui/gallery/glrenderer/TextureUploader;->mFgTextures:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 65
    invoke-virtual {p1, v0}, Lcom/zui/gallery/glrenderer/UploadedTexture;->setIsUploading(Z)V

    .line 66
    invoke-direct {p0}, Lcom/zui/gallery/glrenderer/TextureUploader;->queueSelfIfNeed()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized clear()V
    .locals 2

    monitor-enter p0

    .line 40
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/zui/gallery/glrenderer/TextureUploader;->mFgTextures:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/zui/gallery/glrenderer/TextureUploader;->mFgTextures:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/glrenderer/UploadedTexture;

    invoke-virtual {v0, v1}, Lcom/zui/gallery/glrenderer/UploadedTexture;->setIsUploading(Z)V

    goto :goto_0

    .line 43
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/zui/gallery/glrenderer/TextureUploader;->mBgTextures:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 44
    iget-object v0, p0, Lcom/zui/gallery/glrenderer/TextureUploader;->mBgTextures:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/glrenderer/UploadedTexture;

    invoke-virtual {v0, v1}, Lcom/zui/gallery/glrenderer/UploadedTexture;->setIsUploading(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 46
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onGLIdle(Lcom/zui/gallery/glrenderer/GLCanvas;Z)Z
    .locals 3

    .line 97
    iget-object p2, p0, Lcom/zui/gallery/glrenderer/TextureUploader;->mFgTextures:Ljava/util/ArrayDeque;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/zui/gallery/glrenderer/TextureUploader;->upload(Lcom/zui/gallery/glrenderer/GLCanvas;Ljava/util/ArrayDeque;IZ)I

    move-result p2

    if-ge p2, v0, :cond_0

    .line 98
    iget-object v2, p0, Lcom/zui/gallery/glrenderer/TextureUploader;->mGLRoot:Lcom/zui/gallery/ui/GLRoot;

    invoke-interface {v2}, Lcom/zui/gallery/ui/GLRoot;->requestRender()V

    .line 99
    :cond_0
    iget-object v2, p0, Lcom/zui/gallery/glrenderer/TextureUploader;->mBgTextures:Ljava/util/ArrayDeque;

    invoke-direct {p0, p1, v2, p2, v0}, Lcom/zui/gallery/glrenderer/TextureUploader;->upload(Lcom/zui/gallery/glrenderer/GLCanvas;Ljava/util/ArrayDeque;IZ)I

    .line 100
    monitor-enter p0

    .line 101
    :try_start_0
    iget-object p1, p0, Lcom/zui/gallery/glrenderer/TextureUploader;->mFgTextures:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/zui/gallery/glrenderer/TextureUploader;->mBgTextures:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :cond_2
    :goto_0
    iput-boolean v0, p0, Lcom/zui/gallery/glrenderer/TextureUploader;->mIsQueued:Z

    .line 102
    iget-boolean p1, p0, Lcom/zui/gallery/glrenderer/TextureUploader;->mIsQueued:Z

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    .line 103
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
