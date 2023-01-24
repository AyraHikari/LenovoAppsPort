.class Lcom/zui/gallery/ui/ActionModeHandler$GetAllPanoramaSupports;
.super Ljava/lang/Object;
.source "ActionModeHandler.java"

# interfaces
.implements Lcom/zui/gallery/data/MediaObject$PanoramaSupportCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/ui/ActionModeHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GetAllPanoramaSupports"
.end annotation


# instance fields
.field public mAllPanorama360:Z

.field public mAllPanoramas:Z

.field public mHasPanorama360:Z

.field private mJobContext:Lcom/zui/gallery/util/ThreadPool$JobContext;

.field private mLock:Ljava/lang/Object;

.field private mNumInfoRequired:I


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Lcom/zui/gallery/util/ThreadPool$JobContext;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/zui/gallery/data/MediaObject;",
            ">;",
            "Lcom/zui/gallery/util/ThreadPool$JobContext;",
            ")V"
        }
    .end annotation

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 153
    iput-boolean v0, p0, Lcom/zui/gallery/ui/ActionModeHandler$GetAllPanoramaSupports;->mAllPanoramas:Z

    .line 154
    iput-boolean v0, p0, Lcom/zui/gallery/ui/ActionModeHandler$GetAllPanoramaSupports;->mAllPanorama360:Z

    const/4 v0, 0x0

    .line 155
    iput-boolean v0, p0, Lcom/zui/gallery/ui/ActionModeHandler$GetAllPanoramaSupports;->mHasPanorama360:Z

    .line 156
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/ui/ActionModeHandler$GetAllPanoramaSupports;->mLock:Ljava/lang/Object;

    .line 159
    iput-object p2, p0, Lcom/zui/gallery/ui/ActionModeHandler$GetAllPanoramaSupports;->mJobContext:Lcom/zui/gallery/util/ThreadPool$JobContext;

    .line 160
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    iput p2, p0, Lcom/zui/gallery/ui/ActionModeHandler$GetAllPanoramaSupports;->mNumInfoRequired:I

    .line 161
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/zui/gallery/data/MediaObject;

    .line 162
    invoke-virtual {p2, p0}, Lcom/zui/gallery/data/MediaObject;->getPanoramaSupport(Lcom/zui/gallery/data/MediaObject$PanoramaSupportCallback;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public panoramaInfoAvailable(Lcom/zui/gallery/data/MediaObject;ZZ)V
    .locals 2

    .line 169
    iget-object p1, p0, Lcom/zui/gallery/ui/ActionModeHandler$GetAllPanoramaSupports;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 170
    :try_start_0
    iget v0, p0, Lcom/zui/gallery/ui/ActionModeHandler$GetAllPanoramaSupports;->mNumInfoRequired:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/zui/gallery/ui/ActionModeHandler$GetAllPanoramaSupports;->mNumInfoRequired:I

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 171
    iget-boolean p2, p0, Lcom/zui/gallery/ui/ActionModeHandler$GetAllPanoramaSupports;->mAllPanoramas:Z

    if-eqz p2, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    iput-boolean p2, p0, Lcom/zui/gallery/ui/ActionModeHandler$GetAllPanoramaSupports;->mAllPanoramas:Z

    if-eqz p3, :cond_1

    .line 172
    iget-boolean p2, p0, Lcom/zui/gallery/ui/ActionModeHandler$GetAllPanoramaSupports;->mAllPanorama360:Z

    if-eqz p2, :cond_1

    move p2, v1

    goto :goto_1

    :cond_1
    move p2, v0

    :goto_1
    iput-boolean p2, p0, Lcom/zui/gallery/ui/ActionModeHandler$GetAllPanoramaSupports;->mAllPanorama360:Z

    .line 173
    iget-boolean p2, p0, Lcom/zui/gallery/ui/ActionModeHandler$GetAllPanoramaSupports;->mHasPanorama360:Z

    if-nez p2, :cond_3

    if-eqz p3, :cond_2

    goto :goto_2

    :cond_2
    move v1, v0

    :cond_3
    :goto_2
    iput-boolean v1, p0, Lcom/zui/gallery/ui/ActionModeHandler$GetAllPanoramaSupports;->mHasPanorama360:Z

    .line 174
    iget p2, p0, Lcom/zui/gallery/ui/ActionModeHandler$GetAllPanoramaSupports;->mNumInfoRequired:I

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/zui/gallery/ui/ActionModeHandler$GetAllPanoramaSupports;->mJobContext:Lcom/zui/gallery/util/ThreadPool$JobContext;

    invoke-interface {p2}, Lcom/zui/gallery/util/ThreadPool$JobContext;->isCancelled()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 175
    :cond_4
    iget-object p2, p0, Lcom/zui/gallery/ui/ActionModeHandler$GetAllPanoramaSupports;->mLock:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    .line 177
    :cond_5
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public waitForPanoramaSupport()V
    .locals 2

    .line 181
    iget-object v0, p0, Lcom/zui/gallery/ui/ActionModeHandler$GetAllPanoramaSupports;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 182
    :catch_0
    :goto_0
    :try_start_0
    iget v1, p0, Lcom/zui/gallery/ui/ActionModeHandler$GetAllPanoramaSupports;->mNumInfoRequired:I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/zui/gallery/ui/ActionModeHandler$GetAllPanoramaSupports;->mJobContext:Lcom/zui/gallery/util/ThreadPool$JobContext;

    invoke-interface {v1}, Lcom/zui/gallery/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 184
    :try_start_1
    iget-object v1, p0, Lcom/zui/gallery/ui/ActionModeHandler$GetAllPanoramaSupports;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 189
    :cond_0
    :try_start_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
