.class public Lcom/zui/gallery/ui/PreparePageFadeoutTexture;
.super Ljava/lang/Object;
.source "PreparePageFadeoutTexture.java"

# interfaces
.implements Lcom/zui/gallery/ui/GLRoot$OnGLIdleListener;


# static fields
.field public static final KEY_FADE_TEXTURE:Ljava/lang/String; = "fade_texture"

.field private static final KEY_TRANSITION:Ljava/lang/String; = "transition"

.field private static final TAG:Ljava/lang/String; = "PreparePageFadeoutTexture"

.field private static final TIMEOUT:J = 0x64L

.field private static nStackIndex:I


# instance fields
.field private mCancelled:Z

.field private mResultReady:Landroid/os/ConditionVariable;

.field private mRootPane:Lcom/zui/gallery/ui/GLView;

.field private mTexture:Lcom/zui/gallery/glrenderer/RawTexture;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/zui/gallery/ui/GLView;)V
    .locals 4

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Landroid/os/ConditionVariable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/os/ConditionVariable;-><init>(Z)V

    iput-object v0, p0, Lcom/zui/gallery/ui/PreparePageFadeoutTexture;->mResultReady:Landroid/os/ConditionVariable;

    .line 19
    iput-boolean v1, p0, Lcom/zui/gallery/ui/PreparePageFadeoutTexture;->mCancelled:Z

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 24
    iput-boolean v0, p0, Lcom/zui/gallery/ui/PreparePageFadeoutTexture;->mCancelled:Z

    return-void

    .line 27
    :cond_0
    invoke-virtual {p1}, Lcom/zui/gallery/ui/GLView;->getWidth()I

    move-result v1

    .line 28
    invoke-virtual {p1}, Lcom/zui/gallery/ui/GLView;->getHeight()I

    move-result v2

    if-eqz v1, :cond_2

    if-nez v2, :cond_1

    goto :goto_0

    .line 33
    :cond_1
    new-instance v3, Lcom/zui/gallery/glrenderer/RawTexture;

    invoke-direct {v3, v1, v2, v0}, Lcom/zui/gallery/glrenderer/RawTexture;-><init>(IIZ)V

    iput-object v3, p0, Lcom/zui/gallery/ui/PreparePageFadeoutTexture;->mTexture:Lcom/zui/gallery/glrenderer/RawTexture;

    .line 34
    iput-object p1, p0, Lcom/zui/gallery/ui/PreparePageFadeoutTexture;->mRootPane:Lcom/zui/gallery/ui/GLView;

    return-void

    .line 30
    :cond_2
    :goto_0
    iput-boolean v0, p0, Lcom/zui/gallery/ui/PreparePageFadeoutTexture;->mCancelled:Z

    return-void
.end method

.method private static getKey(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    return-object p0

    .line 109
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static pop(Lcom/zui/gallery/app/AbstractGalleryActivity;)Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;
    .locals 8

    .line 131
    sget v0, Lcom/zui/gallery/ui/PreparePageFadeoutTexture;->nStackIndex:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 132
    sget-object p0, Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;->None:Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;

    return-object p0

    .line 135
    :cond_0
    invoke-virtual {p0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getTransitionStack()Lcom/zui/gallery/app/TransitionStore;

    move-result-object v0

    sget v2, Lcom/zui/gallery/ui/PreparePageFadeoutTexture;->nStackIndex:I

    const-string/jumbo v3, "transition-in"

    invoke-static {v3, v2}, Lcom/zui/gallery/ui/PreparePageFadeoutTexture;->getKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;->None:Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;

    invoke-virtual {v0, v2, v4}, Lcom/zui/gallery/app/TransitionStore;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;

    const/4 v2, 0x0

    .line 136
    invoke-static {v3, v2}, Lcom/zui/gallery/ui/PreparePageFadeoutTexture;->getKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 138
    invoke-virtual {p0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getTransitionStore()Lcom/zui/gallery/app/TransitionStore;

    move-result-object v4

    sget-object v5, Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;->None:Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;

    invoke-virtual {v4, v3, v5}, Lcom/zui/gallery/app/TransitionStore;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-ne v0, v4, :cond_1

    return-object v0

    .line 142
    :cond_1
    invoke-virtual {p0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getTransitionStore()Lcom/zui/gallery/app/TransitionStore;

    move-result-object v4

    invoke-virtual {v4, v3, v0}, Lcom/zui/gallery/app/TransitionStore;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 144
    invoke-virtual {p0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getTransitionStore()Lcom/zui/gallery/app/TransitionStore;

    move-result-object v3

    const-string v4, "fade_texture"

    invoke-static {v4, v2}, Lcom/zui/gallery/ui/PreparePageFadeoutTexture;->getKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getTransitionStack()Lcom/zui/gallery/app/TransitionStore;

    move-result-object v6

    sget v7, Lcom/zui/gallery/ui/PreparePageFadeoutTexture;->nStackIndex:I

    invoke-static {v4, v7}, Lcom/zui/gallery/ui/PreparePageFadeoutTexture;->getKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Lcom/zui/gallery/app/TransitionStore;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Lcom/zui/gallery/app/TransitionStore;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 147
    invoke-virtual {p0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getTransitionStore()Lcom/zui/gallery/app/TransitionStore;

    move-result-object v3

    const-string/jumbo v4, "transition-in-rect"

    invoke-static {v4, v2}, Lcom/zui/gallery/ui/PreparePageFadeoutTexture;->getKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 148
    invoke-virtual {p0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getTransitionStack()Lcom/zui/gallery/app/TransitionStore;

    move-result-object v5

    sget v6, Lcom/zui/gallery/ui/PreparePageFadeoutTexture;->nStackIndex:I

    invoke-static {v4, v6}, Lcom/zui/gallery/ui/PreparePageFadeoutTexture;->getKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/zui/gallery/app/TransitionStore;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 147
    invoke-virtual {v3, v2, v4}, Lcom/zui/gallery/app/TransitionStore;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 150
    sget v2, Lcom/zui/gallery/ui/PreparePageFadeoutTexture;->nStackIndex:I

    sub-int/2addr v2, v1

    sput v2, Lcom/zui/gallery/ui/PreparePageFadeoutTexture;->nStackIndex:I

    if-ge v2, v1, :cond_2

    .line 153
    invoke-virtual {p0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getTransitionStack()Lcom/zui/gallery/app/TransitionStore;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/gallery/app/TransitionStore;->clear()V

    :cond_2
    return-object v0
.end method

.method public static prepareFadeOutTexture(Lcom/zui/gallery/app/AbstractGalleryActivity;Lcom/zui/gallery/ui/GLView;)V
    .locals 2

    .line 71
    new-instance v0, Lcom/zui/gallery/ui/PreparePageFadeoutTexture;

    invoke-direct {v0, p1}, Lcom/zui/gallery/ui/PreparePageFadeoutTexture;-><init>(Lcom/zui/gallery/ui/GLView;)V

    .line 72
    invoke-virtual {v0}, Lcom/zui/gallery/ui/PreparePageFadeoutTexture;->isCancelled()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 73
    :cond_0
    invoke-virtual {p0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getGLRoot()Lcom/zui/gallery/ui/GLRoot;

    move-result-object p1

    .line 76
    invoke-interface {p1}, Lcom/zui/gallery/ui/GLRoot;->isLocked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 78
    invoke-interface {p1}, Lcom/zui/gallery/ui/GLRoot;->unlockRenderThread()V

    .line 83
    :cond_1
    :try_start_0
    invoke-interface {p1, v0}, Lcom/zui/gallery/ui/GLRoot;->addOnGLIdleListenerFirst(Lcom/zui/gallery/ui/GLRoot$OnGLIdleListener;)V

    .line 84
    invoke-interface {p1}, Lcom/zui/gallery/ui/GLRoot;->requestRender()V

    .line 86
    invoke-virtual {v0}, Lcom/zui/gallery/ui/PreparePageFadeoutTexture;->get()Lcom/zui/gallery/glrenderer/RawTexture;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    .line 89
    invoke-interface {p1}, Lcom/zui/gallery/ui/GLRoot;->lockRenderThread()V

    :cond_2
    if-nez v0, :cond_3

    return-void

    .line 97
    :cond_3
    invoke-virtual {p0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getTransitionStore()Lcom/zui/gallery/app/TransitionStore;

    move-result-object p0

    const-string p1, "fade_texture"

    invoke-virtual {p0, p1, v0}, Lcom/zui/gallery/app/TransitionStore;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p0

    if-eqz v1, :cond_4

    .line 89
    invoke-interface {p1}, Lcom/zui/gallery/ui/GLRoot;->lockRenderThread()V

    .line 92
    :cond_4
    throw p0
.end method

.method public static push(Lcom/zui/gallery/app/AbstractGalleryActivity;Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;)V
    .locals 5

    .line 113
    sget v0, Lcom/zui/gallery/ui/PreparePageFadeoutTexture;->nStackIndex:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/zui/gallery/ui/PreparePageFadeoutTexture;->nStackIndex:I

    const-string/jumbo v1, "transition-in"

    .line 114
    invoke-static {v1, v0}, Lcom/zui/gallery/ui/PreparePageFadeoutTexture;->getKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 115
    invoke-virtual {p0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getTransitionStack()Lcom/zui/gallery/app/TransitionStore;

    move-result-object v1

    sget-object v2, Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;->None:Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;

    invoke-virtual {v1, v0, v2}, Lcom/zui/gallery/app/TransitionStore;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-ne p1, v1, :cond_0

    return-void

    .line 119
    :cond_0
    invoke-virtual {p0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getTransitionStack()Lcom/zui/gallery/app/TransitionStore;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/zui/gallery/app/TransitionStore;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 121
    invoke-virtual {p0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getTransitionStack()Lcom/zui/gallery/app/TransitionStore;

    move-result-object p1

    sget v0, Lcom/zui/gallery/ui/PreparePageFadeoutTexture;->nStackIndex:I

    const-string v1, "fade_texture"

    invoke-static {v1, v0}, Lcom/zui/gallery/ui/PreparePageFadeoutTexture;->getKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getTransitionStore()Lcom/zui/gallery/app/TransitionStore;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/zui/gallery/ui/PreparePageFadeoutTexture;->getKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/zui/gallery/app/TransitionStore;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/zui/gallery/app/TransitionStore;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 123
    invoke-virtual {p0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getTransitionStack()Lcom/zui/gallery/app/TransitionStore;

    move-result-object p1

    sget v0, Lcom/zui/gallery/ui/PreparePageFadeoutTexture;->nStackIndex:I

    const-string/jumbo v1, "transition-in-rect"

    invoke-static {v1, v0}, Lcom/zui/gallery/ui/PreparePageFadeoutTexture;->getKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 124
    invoke-virtual {p0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getTransitionStore()Lcom/zui/gallery/app/TransitionStore;

    move-result-object v2

    invoke-static {v1, v3}, Lcom/zui/gallery/ui/PreparePageFadeoutTexture;->getKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/zui/gallery/app/TransitionStore;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 123
    invoke-virtual {p1, v0, v2}, Lcom/zui/gallery/app/TransitionStore;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 125
    invoke-virtual {p0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getTransitionStack()Lcom/zui/gallery/app/TransitionStore;

    move-result-object p1

    sget v0, Lcom/zui/gallery/ui/PreparePageFadeoutTexture;->nStackIndex:I

    invoke-static {v1, v0}, Lcom/zui/gallery/ui/PreparePageFadeoutTexture;->getKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 126
    invoke-virtual {p0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getTransitionStore()Lcom/zui/gallery/app/TransitionStore;

    move-result-object p0

    invoke-static {v1, v3}, Lcom/zui/gallery/ui/PreparePageFadeoutTexture;->getKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/zui/gallery/app/TransitionStore;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 125
    invoke-virtual {p1, v0, p0}, Lcom/zui/gallery/app/TransitionStore;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized get()Lcom/zui/gallery/glrenderer/RawTexture;
    .locals 4

    monitor-enter p0

    .line 42
    :try_start_0
    iget-boolean v0, p0, Lcom/zui/gallery/ui/PreparePageFadeoutTexture;->mCancelled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 43
    monitor-exit p0

    return-object v1

    .line 44
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/zui/gallery/ui/PreparePageFadeoutTexture;->mResultReady:Landroid/os/ConditionVariable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/os/ConditionVariable;->block(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 45
    iget-object v0, p0, Lcom/zui/gallery/ui/PreparePageFadeoutTexture;->mTexture:Lcom/zui/gallery/glrenderer/RawTexture;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_1
    const/4 v0, 0x1

    .line 47
    :try_start_2
    iput-boolean v0, p0, Lcom/zui/gallery/ui/PreparePageFadeoutTexture;->mCancelled:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 48
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isCancelled()Z
    .locals 1

    .line 38
    iget-boolean v0, p0, Lcom/zui/gallery/ui/PreparePageFadeoutTexture;->mCancelled:Z

    return v0
.end method

.method public onGLIdle(Lcom/zui/gallery/glrenderer/GLCanvas;Z)Z
    .locals 1

    .line 54
    iget-boolean p2, p0, Lcom/zui/gallery/ui/PreparePageFadeoutTexture;->mCancelled:Z

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 56
    :try_start_0
    iget-object p2, p0, Lcom/zui/gallery/ui/PreparePageFadeoutTexture;->mTexture:Lcom/zui/gallery/glrenderer/RawTexture;

    invoke-interface {p1, p2}, Lcom/zui/gallery/glrenderer/GLCanvas;->beginRenderTarget(Lcom/zui/gallery/glrenderer/RawTexture;)V

    .line 57
    iget-object p2, p0, Lcom/zui/gallery/ui/PreparePageFadeoutTexture;->mRootPane:Lcom/zui/gallery/ui/GLView;

    invoke-virtual {p2, p1}, Lcom/zui/gallery/ui/GLView;->render(Lcom/zui/gallery/glrenderer/GLCanvas;)V

    .line 58
    invoke-interface {p1}, Lcom/zui/gallery/glrenderer/GLCanvas;->endRenderTarget()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 60
    :catch_0
    iput-object v0, p0, Lcom/zui/gallery/ui/PreparePageFadeoutTexture;->mTexture:Lcom/zui/gallery/glrenderer/RawTexture;

    goto :goto_0

    .line 63
    :cond_0
    iput-object v0, p0, Lcom/zui/gallery/ui/PreparePageFadeoutTexture;->mTexture:Lcom/zui/gallery/glrenderer/RawTexture;

    .line 65
    :goto_0
    iget-object p1, p0, Lcom/zui/gallery/ui/PreparePageFadeoutTexture;->mResultReady:Landroid/os/ConditionVariable;

    invoke-virtual {p1}, Landroid/os/ConditionVariable;->open()V

    const/4 p1, 0x0

    return p1
.end method
