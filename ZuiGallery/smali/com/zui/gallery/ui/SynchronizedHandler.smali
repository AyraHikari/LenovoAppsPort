.class public Lcom/zui/gallery/ui/SynchronizedHandler;
.super Landroid/os/Handler;
.source "SynchronizedHandler.java"


# instance fields
.field private final mRoot:Lcom/zui/gallery/ui/GLRoot;


# direct methods
.method public constructor <init>(Lcom/zui/gallery/ui/GLRoot;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 29
    invoke-static {p1}, Lcom/zui/gallery/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/ui/GLRoot;

    iput-object p1, p0, Lcom/zui/gallery/ui/SynchronizedHandler;->mRoot:Lcom/zui/gallery/ui/GLRoot;

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/zui/gallery/ui/SynchronizedHandler;->mRoot:Lcom/zui/gallery/ui/GLRoot;

    invoke-interface {v0}, Lcom/zui/gallery/ui/GLRoot;->lockRenderThread()V

    .line 36
    :try_start_0
    invoke-super {p0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    iget-object p1, p0, Lcom/zui/gallery/ui/SynchronizedHandler;->mRoot:Lcom/zui/gallery/ui/GLRoot;

    invoke-interface {p1}, Lcom/zui/gallery/ui/GLRoot;->unlockRenderThread()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/zui/gallery/ui/SynchronizedHandler;->mRoot:Lcom/zui/gallery/ui/GLRoot;

    invoke-interface {v0}, Lcom/zui/gallery/ui/GLRoot;->unlockRenderThread()V

    .line 39
    throw p1
.end method
