.class public Lcom/zui/gallery/glrenderer/TiledTexture$Uploader;
.super Ljava/lang/Object;
.source "TiledTexture.java"

# interfaces
.implements Lcom/zui/gallery/ui/GLRoot$OnGLIdleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/glrenderer/TiledTexture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Uploader"
.end annotation


# instance fields
.field private final mGlRoot:Lcom/zui/gallery/ui/GLRoot;

.field private mIsQueued:Z

.field private final mTextures:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/zui/gallery/glrenderer/TiledTexture;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/zui/gallery/ui/GLRoot;)V
    .locals 2

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Ljava/util/ArrayDeque;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lcom/zui/gallery/glrenderer/TiledTexture$Uploader;->mTextures:Ljava/util/ArrayDeque;

    const/4 v0, 0x0

    .line 76
    iput-boolean v0, p0, Lcom/zui/gallery/glrenderer/TiledTexture$Uploader;->mIsQueued:Z

    .line 79
    iput-object p1, p0, Lcom/zui/gallery/glrenderer/TiledTexture$Uploader;->mGlRoot:Lcom/zui/gallery/ui/GLRoot;

    return-void
.end method


# virtual methods
.method public declared-synchronized addTexture(Lcom/zui/gallery/glrenderer/TiledTexture;)V
    .locals 1

    monitor-enter p0

    .line 87
    :try_start_0
    invoke-virtual {p1}, Lcom/zui/gallery/glrenderer/TiledTexture;->isReady()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    .line 88
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/zui/gallery/glrenderer/TiledTexture$Uploader;->mTextures:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 90
    iget-boolean p1, p0, Lcom/zui/gallery/glrenderer/TiledTexture$Uploader;->mIsQueued:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    const/4 p1, 0x1

    .line 91
    :try_start_2
    iput-boolean p1, p0, Lcom/zui/gallery/glrenderer/TiledTexture$Uploader;->mIsQueued:Z

    .line 92
    iget-object p1, p0, Lcom/zui/gallery/glrenderer/TiledTexture$Uploader;->mGlRoot:Lcom/zui/gallery/ui/GLRoot;

    invoke-interface {p1, p0}, Lcom/zui/gallery/ui/GLRoot;->addOnGLIdleListener(Lcom/zui/gallery/ui/GLRoot$OnGLIdleListener;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 93
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized clear()V
    .locals 1

    monitor-enter p0

    .line 83
    :try_start_0
    iget-object v0, p0, Lcom/zui/gallery/glrenderer/TiledTexture$Uploader;->mTextures:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onGLIdle(Lcom/zui/gallery/glrenderer/GLCanvas;Z)Z
    .locals 4

    .line 97
    iget-object p2, p0, Lcom/zui/gallery/glrenderer/TiledTexture$Uploader;->mTextures:Ljava/util/ArrayDeque;

    .line 98
    monitor-enter p0

    .line 99
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x4

    add-long/2addr v2, v0

    :goto_0
    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 101
    invoke-virtual {p2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 102
    invoke-virtual {p2}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/glrenderer/TiledTexture;

    .line 103
    invoke-static {v0, p1}, Lcom/zui/gallery/glrenderer/TiledTexture;->access$000(Lcom/zui/gallery/glrenderer/TiledTexture;Lcom/zui/gallery/glrenderer/GLCanvas;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {p2}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 105
    iget-object v0, p0, Lcom/zui/gallery/glrenderer/TiledTexture$Uploader;->mGlRoot:Lcom/zui/gallery/ui/GLRoot;

    invoke-interface {v0}, Lcom/zui/gallery/ui/GLRoot;->requestRender()V

    .line 107
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    goto :goto_0

    .line 109
    :cond_1
    iget-object p1, p0, Lcom/zui/gallery/glrenderer/TiledTexture$Uploader;->mTextures:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    iput-boolean p1, p0, Lcom/zui/gallery/glrenderer/TiledTexture$Uploader;->mIsQueued:Z

    .line 112
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    .line 113
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
