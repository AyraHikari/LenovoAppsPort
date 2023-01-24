.class public abstract Lcom/zui/gallery/ui/localtime/LocalTimeBitmapLoader;
.super Ljava/lang/Object;
.source "LocalTimeBitmapLoader.java"

# interfaces
.implements Lcom/zui/gallery/util/FutureListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/zui/gallery/util/FutureListener<",
        "[",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field private static final STATE_ERROR:I = 0x3

.field private static final STATE_INIT:I = 0x0

.field private static final STATE_LOADED:I = 0x2

.field private static final STATE_RECYCLED:I = 0x4

.field private static final STATE_REQUESTED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "BitmapLoader"


# instance fields
.field private mBitmap:[Landroid/graphics/Bitmap;

.field private mState:I

.field private mTask:Lcom/zui/gallery/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/zui/gallery/util/Future<",
            "[",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeBitmapLoader;->mState:I

    return-void
.end method


# virtual methods
.method public declared-synchronized cancelLoad()V
    .locals 2

    monitor-enter p0

    .line 87
    :try_start_0
    iget v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeBitmapLoader;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 88
    iput v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeBitmapLoader;->mState:I

    .line 89
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeBitmapLoader;->mTask:Lcom/zui/gallery/util/Future;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeBitmapLoader;->mTask:Lcom/zui/gallery/util/Future;

    invoke-interface {v0}, Lcom/zui/gallery/util/Future;->cancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getBitmap()[Landroid/graphics/Bitmap;
    .locals 1

    monitor-enter p0

    .line 114
    :try_start_0
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeBitmapLoader;->mBitmap:[Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isRecycled()Z
    .locals 2

    monitor-enter p0

    .line 110
    :try_start_0
    iget v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeBitmapLoader;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

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

.method public declared-synchronized isRequestInProgress()Z
    .locals 2

    monitor-enter p0

    .line 106
    :try_start_0
    iget v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeBitmapLoader;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onFutureDone(Lcom/zui/gallery/util/Future;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zui/gallery/util/Future<",
            "[",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 50
    monitor-enter p0

    const/4 v0, 0x0

    .line 51
    :try_start_0
    iput-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeBitmapLoader;->mTask:Lcom/zui/gallery/util/Future;

    .line 52
    invoke-interface {p1}, Lcom/zui/gallery/util/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeBitmapLoader;->mBitmap:[Landroid/graphics/Bitmap;

    .line 53
    iget v2, p0, Lcom/zui/gallery/ui/localtime/LocalTimeBitmapLoader;->mState:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    if-eqz v1, :cond_1

    .line 54
    array-length p1, v1

    if-lez p1, :cond_1

    .line 55
    array-length p1, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_0

    aget-object v3, v1, v2

    .line 56
    invoke-static {}, Lcom/zui/gallery/util/GalleryBitmapPool;->getInstance()Lcom/zui/gallery/util/GalleryBitmapPool;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/zui/gallery/util/GalleryBitmapPool;->put(Landroid/graphics/Bitmap;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 58
    :cond_0
    iput-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeBitmapLoader;->mBitmap:[Landroid/graphics/Bitmap;

    .line 60
    :cond_1
    monitor-exit p0

    return-void

    .line 62
    :cond_2
    invoke-interface {p1}, Lcom/zui/gallery/util/Future;->isCancelled()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeBitmapLoader;->mBitmap:[Landroid/graphics/Bitmap;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeBitmapLoader;->mBitmap:[Landroid/graphics/Bitmap;

    array-length p1, p1

    if-nez p1, :cond_5

    .line 63
    :cond_3
    iget p1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeBitmapLoader;->mState:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    invoke-virtual {p0, p0}, Lcom/zui/gallery/ui/localtime/LocalTimeBitmapLoader;->submitBitmapTask(Lcom/zui/gallery/util/FutureListener;)Lcom/zui/gallery/util/Future;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeBitmapLoader;->mTask:Lcom/zui/gallery/util/Future;

    .line 64
    :cond_4
    monitor-exit p0

    return-void

    .line 66
    :cond_5
    iget-object p1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeBitmapLoader;->mBitmap:[Landroid/graphics/Bitmap;

    if-nez p1, :cond_6

    const/4 p1, 0x3

    goto :goto_1

    :cond_6
    const/4 p1, 0x2

    :goto_1
    iput p1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeBitmapLoader;->mState:I

    .line 68
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    iget-object p1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeBitmapLoader;->mBitmap:[Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/zui/gallery/ui/localtime/LocalTimeBitmapLoader;->onLoadComplete([Landroid/graphics/Bitmap;)V

    return-void

    :catchall_0
    move-exception p1

    .line 68
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method protected abstract onLoadComplete([Landroid/graphics/Bitmap;)V
.end method

.method public declared-synchronized recycle()V
    .locals 5

    monitor-enter p0

    const/4 v0, 0x4

    .line 95
    :try_start_0
    iput v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeBitmapLoader;->mState:I

    .line 96
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeBitmapLoader;->mBitmap:[Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeBitmapLoader;->mBitmap:[Landroid/graphics/Bitmap;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 97
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeBitmapLoader;->mBitmap:[Landroid/graphics/Bitmap;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 98
    invoke-static {}, Lcom/zui/gallery/util/GalleryBitmapPool;->getInstance()Lcom/zui/gallery/util/GalleryBitmapPool;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/zui/gallery/util/GalleryBitmapPool;->put(Landroid/graphics/Bitmap;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 100
    iput-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeBitmapLoader;->mBitmap:[Landroid/graphics/Bitmap;

    .line 102
    :cond_1
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeBitmapLoader;->mTask:Lcom/zui/gallery/util/Future;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeBitmapLoader;->mTask:Lcom/zui/gallery/util/Future;

    invoke-interface {v0}, Lcom/zui/gallery/util/Future;->cancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startLoad()V
    .locals 1

    monitor-enter p0

    .line 80
    :try_start_0
    iget v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeBitmapLoader;->mState:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 81
    iput v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeBitmapLoader;->mState:I

    .line 82
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeBitmapLoader;->mTask:Lcom/zui/gallery/util/Future;

    if-nez v0, :cond_0

    invoke-virtual {p0, p0}, Lcom/zui/gallery/ui/localtime/LocalTimeBitmapLoader;->submitBitmapTask(Lcom/zui/gallery/util/FutureListener;)Lcom/zui/gallery/util/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeBitmapLoader;->mTask:Lcom/zui/gallery/util/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startLoad(Z)V
    .locals 0

    monitor-enter p0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 73
    :try_start_0
    iput p1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeBitmapLoader;->mState:I

    .line 74
    iget-object p1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeBitmapLoader;->mTask:Lcom/zui/gallery/util/Future;

    if-nez p1, :cond_0

    invoke-virtual {p0, p0}, Lcom/zui/gallery/ui/localtime/LocalTimeBitmapLoader;->submitBitmapTask(Lcom/zui/gallery/util/FutureListener;)Lcom/zui/gallery/util/Future;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeBitmapLoader;->mTask:Lcom/zui/gallery/util/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 76
    :cond_0
    :goto_0
    monitor-exit p0

    return-void
.end method

.method protected abstract submitBitmapTask(Lcom/zui/gallery/util/FutureListener;)Lcom/zui/gallery/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zui/gallery/util/FutureListener<",
            "[",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/zui/gallery/util/Future<",
            "[",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end method
