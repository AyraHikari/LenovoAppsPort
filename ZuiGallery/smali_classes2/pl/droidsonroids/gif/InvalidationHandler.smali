.class Lpl/droidsonroids/gif/InvalidationHandler;
.super Landroid/os/Handler;
.source "InvalidationHandler.java"


# static fields
.field static final MSG_TYPE_INVALIDATION:I = -0x1


# instance fields
.field private final mDrawableRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lpl/droidsonroids/gif/GifDrawable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lpl/droidsonroids/gif/GifDrawable;)V
    .locals 1

    .line 16
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 17
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lpl/droidsonroids/gif/InvalidationHandler;->mDrawableRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 22
    iget-object v0, p0, Lpl/droidsonroids/gif/InvalidationHandler;->mDrawableRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/droidsonroids/gif/GifDrawable;

    if-nez v0, :cond_0

    return-void

    .line 26
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 27
    invoke-virtual {v0}, Lpl/droidsonroids/gif/GifDrawable;->invalidateSelf()V

    goto :goto_1

    .line 29
    :cond_1
    iget-object v0, v0, Lpl/droidsonroids/gif/GifDrawable;->mListeners:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/droidsonroids/gif/AnimationListener;

    .line 30
    iget v2, p1, Landroid/os/Message;->what:I

    invoke-interface {v1, v2}, Lpl/droidsonroids/gif/AnimationListener;->onAnimationCompleted(I)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method
