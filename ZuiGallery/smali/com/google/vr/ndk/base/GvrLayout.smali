.class public Lcom/google/vr/ndk/base/GvrLayout;
.super Landroid/widget/FrameLayout;
.source "GvrLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/ndk/base/GvrLayout$ExternalSurfaceListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "GvrLayout"


# instance fields
.field private gvrApi:Lcom/google/vr/ndk/base/GvrApi;

.field private impl:Lcom/google/vr/vrcore/library/api/IGvrLayout;

.field private uiLayout:Lcom/google/vr/ndk/base/GvrUiLayout;

.field private videoSurface:Lcom/google/vr/ndk/base/ExternalSurface;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 95
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 96
    invoke-static {p1}, Lcom/google/vr/cardboard/ContextUtils;->getActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 100
    invoke-direct {p0}, Lcom/google/vr/ndk/base/GvrLayout;->init()V

    return-void

    .line 98
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "An Activity Context is required for VR functionality."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyleAttr",
            "defStyleRes"
        }
    .end annotation

    .line 114
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 115
    invoke-static {p1}, Lcom/google/vr/cardboard/ContextUtils;->getActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 119
    invoke-direct {p0}, Lcom/google/vr/ndk/base/GvrLayout;->init()V

    return-void

    .line 117
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "An Activity Context is required for VR functionality."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/vr/ndk/base/GvrLayoutImpl;Lcom/google/vr/ndk/base/GvrApi;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "impl",
            "gvrApi"
        }
    .end annotation

    .line 139
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 140
    new-instance p1, Lcom/google/vr/ndk/base/GvrLayoutImplWrapper;

    invoke-direct {p1, p2}, Lcom/google/vr/ndk/base/GvrLayoutImplWrapper;-><init>(Lcom/google/vr/ndk/base/GvrLayoutImpl;)V

    iput-object p1, p0, Lcom/google/vr/ndk/base/GvrLayout;->impl:Lcom/google/vr/vrcore/library/api/IGvrLayout;

    .line 141
    iput-object p3, p0, Lcom/google/vr/ndk/base/GvrLayout;->gvrApi:Lcom/google/vr/ndk/base/GvrApi;

    .line 142
    invoke-direct {p0}, Lcom/google/vr/ndk/base/GvrLayout;->init()V

    return-void
.end method

.method public constructor <init>(Lcom/google/vr/cardboard/VrContextWrapper;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "contextWrapper"
        }
    .end annotation

    .line 130
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 131
    invoke-direct {p0}, Lcom/google/vr/ndk/base/GvrLayout;->init()V

    return-void
.end method

.method private init()V
    .locals 4

    const-string v0, "GvrLayout.init"

    .line 146
    invoke-static {v0}, Lcom/google/vr/ndk/base/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 148
    :try_start_0
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->impl:Lcom/google/vr/vrcore/library/api/IGvrLayout;

    if-nez v0, :cond_0

    .line 149
    invoke-virtual {p0}, Lcom/google/vr/ndk/base/GvrLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/vr/ndk/base/GvrLayoutFactory;->create(Landroid/content/Context;)Lcom/google/vr/vrcore/library/api/IGvrLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->impl:Lcom/google/vr/vrcore/library/api/IGvrLayout;

    .line 151
    :cond_0
    new-instance v0, Lcom/google/vr/ndk/base/GvrUiLayout;

    iget-object v1, p0, Lcom/google/vr/ndk/base/GvrLayout;->impl:Lcom/google/vr/vrcore/library/api/IGvrLayout;

    invoke-interface {v1}, Lcom/google/vr/vrcore/library/api/IGvrLayout;->getUiLayout()Lcom/google/vr/vrcore/library/api/IGvrUiLayout;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/vr/ndk/base/GvrUiLayout;-><init>(Lcom/google/vr/vrcore/library/api/IGvrUiLayout;)V

    iput-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->uiLayout:Lcom/google/vr/ndk/base/GvrUiLayout;

    .line 152
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->gvrApi:Lcom/google/vr/ndk/base/GvrApi;

    if-nez v0, :cond_1

    .line 153
    new-instance v0, Lcom/google/vr/ndk/base/GvrApi;

    invoke-virtual {p0}, Lcom/google/vr/ndk/base/GvrLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/vr/ndk/base/GvrLayout;->impl:Lcom/google/vr/vrcore/library/api/IGvrLayout;

    invoke-interface {v2}, Lcom/google/vr/vrcore/library/api/IGvrLayout;->getNativeGvrContext()J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lcom/google/vr/ndk/base/GvrApi;-><init>(Landroid/content/Context;J)V

    iput-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->gvrApi:Lcom/google/vr/ndk/base/GvrApi;

    .line 155
    :cond_1
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->impl:Lcom/google/vr/vrcore/library/api/IGvrLayout;

    invoke-interface {v0}, Lcom/google/vr/vrcore/library/api/IGvrLayout;->getRootView()Lcom/google/vr/vrcore/library/api/IObjectWrapper;

    move-result-object v0

    const-class v1, Landroid/view/View;

    invoke-static {v0, v1}, Lcom/google/vr/vrcore/library/api/ObjectWrapper;->unwrap(Lcom/google/vr/vrcore/library/api/IObjectWrapper;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/google/vr/ndk/base/GvrLayout;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    invoke-static {}, Lcom/google/vr/ndk/base/TraceCompat;->endSection()V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 157
    :try_start_1
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 159
    :goto_0
    invoke-static {}, Lcom/google/vr/ndk/base/TraceCompat;->endSection()V

    throw v0
.end method


# virtual methods
.method public enableAsyncReprojectionProtected()Z
    .locals 2

    .line 383
    :try_start_0
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->impl:Lcom/google/vr/vrcore/library/api/IGvrLayout;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/vr/vrcore/library/api/IGvrLayout;->enableAsyncReprojection(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 386
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public enableAsyncReprojectionVideoSurface(Lcom/google/vr/ndk/base/GvrLayout$ExternalSurfaceListener;Landroid/os/Handler;Z)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "listener",
            "handler",
            "useProtectedBuffers"
        }
    .end annotation

    .line 324
    :try_start_0
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->impl:Lcom/google/vr/vrcore/library/api/IGvrLayout;

    invoke-interface {v0, p3}, Lcom/google/vr/vrcore/library/api/IGvrLayout;->enableAsyncReprojection(I)Z

    move-result p3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return v0

    .line 333
    :cond_0
    iget-object p3, p0, Lcom/google/vr/ndk/base/GvrLayout;->gvrApi:Lcom/google/vr/ndk/base/GvrApi;

    const/4 v1, 0x2

    invoke-virtual {p3, v1}, Lcom/google/vr/ndk/base/GvrApi;->isFeatureSupported(I)Z

    move-result p3

    if-nez p3, :cond_1

    const-string p1, "GvrLayout"

    const-string p2, "External Surfaces are unsupported. Cannot enable video Surface."

    .line 334
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 338
    :cond_1
    iget-object p3, p0, Lcom/google/vr/ndk/base/GvrLayout;->gvrApi:Lcom/google/vr/ndk/base/GvrApi;

    invoke-virtual {p3, p1, p2}, Lcom/google/vr/ndk/base/GvrApi;->createExternalSurface(Lcom/google/vr/ndk/base/GvrLayout$ExternalSurfaceListener;Landroid/os/Handler;)Lcom/google/vr/ndk/base/ExternalSurface;

    move-result-object p1

    iput-object p1, p0, Lcom/google/vr/ndk/base/GvrLayout;->videoSurface:Lcom/google/vr/ndk/base/ExternalSurface;

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 328
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public enableCardboardTriggerEmulation(Ljava/lang/Runnable;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cardboardTriggerListener"
        }
    .end annotation

    .line 423
    :try_start_0
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->impl:Lcom/google/vr/vrcore/library/api/IGvrLayout;

    invoke-static {p1}, Lcom/google/vr/vrcore/library/api/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/vr/vrcore/library/api/IObjectWrapper;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/vr/vrcore/library/api/IGvrLayout;->enableCardboardTriggerEmulation(Lcom/google/vr/vrcore/library/api/IObjectWrapper;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 425
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getAsyncReprojectionVideoSurface()Landroid/view/Surface;
    .locals 2

    .line 463
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->videoSurface:Lcom/google/vr/ndk/base/ExternalSurface;

    if-nez v0, :cond_0

    const-string v0, "GvrLayout"

    const-string v1, "Async reprojection video is not enabled. Did you call enableAsyncReprojectionVideoSurface()?"

    .line 464
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    .line 470
    :cond_0
    invoke-virtual {v0}, Lcom/google/vr/ndk/base/ExternalSurface;->getSurface()Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method

.method public getAsyncReprojectionVideoSurfaceId()I
    .locals 2

    .line 443
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->videoSurface:Lcom/google/vr/ndk/base/ExternalSurface;

    if-nez v0, :cond_0

    const-string v0, "GvrLayout"

    const-string v1, "Async reprojection video is not enabled. Did you call enableAsyncReprojectionVideoSurface()?"

    .line 444
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    return v0

    .line 450
    :cond_0
    invoke-virtual {v0}, Lcom/google/vr/ndk/base/ExternalSurface;->getId()I

    move-result v0

    return v0
.end method

.method public getGvrApi()Lcom/google/vr/ndk/base/GvrApi;
    .locals 1

    .line 492
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->gvrApi:Lcom/google/vr/ndk/base/GvrApi;

    return-object v0
.end method

.method public getUiLayout()Lcom/google/vr/ndk/base/GvrUiLayout;
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->uiLayout:Lcom/google/vr/ndk/base/GvrUiLayout;

    return-object v0
.end method

.method public onBackPressed()V
    .locals 2

    .line 214
    :try_start_0
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->impl:Lcom/google/vr/vrcore/library/api/IGvrLayout;

    invoke-interface {v0}, Lcom/google/vr/vrcore/library/api/IGvrLayout;->onBackPressed()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 216
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public onPause()V
    .locals 2

    const-string v0, "GvrLayout.onPause"

    .line 179
    invoke-static {v0}, Lcom/google/vr/ndk/base/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 181
    :try_start_0
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->impl:Lcom/google/vr/vrcore/library/api/IGvrLayout;

    invoke-interface {v0}, Lcom/google/vr/vrcore/library/api/IGvrLayout;->onPause()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    invoke-static {}, Lcom/google/vr/ndk/base/TraceCompat;->endSection()V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 183
    :try_start_1
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 185
    :goto_0
    invoke-static {}, Lcom/google/vr/ndk/base/TraceCompat;->endSection()V

    throw v0
.end method

.method public onResume()V
    .locals 2

    const-string v0, "GvrLayout.onResume"

    .line 194
    invoke-static {v0}, Lcom/google/vr/ndk/base/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 196
    :try_start_0
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->impl:Lcom/google/vr/vrcore/library/api/IGvrLayout;

    invoke-interface {v0}, Lcom/google/vr/vrcore/library/api/IGvrLayout;->onResume()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    invoke-static {}, Lcom/google/vr/ndk/base/TraceCompat;->endSection()V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 198
    :try_start_1
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 200
    :goto_0
    invoke-static {}, Lcom/google/vr/ndk/base/TraceCompat;->endSection()V

    throw v0
.end method

.method public setAsyncReprojectionEnabled(Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    if-nez p1, :cond_1

    .line 356
    iget-object p1, p0, Lcom/google/vr/ndk/base/GvrLayout;->gvrApi:Lcom/google/vr/ndk/base/GvrApi;

    invoke-virtual {p1}, Lcom/google/vr/ndk/base/GvrApi;->getAsyncReprojectionEnabled()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 357
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Async reprojection cannot be disabled once enabled."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 364
    :cond_1
    :try_start_0
    iget-object p1, p0, Lcom/google/vr/ndk/base/GvrLayout;->impl:Lcom/google/vr/vrcore/library/api/IGvrLayout;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/google/vr/vrcore/library/api/IGvrLayout;->enableAsyncReprojection(I)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 366
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public setFixedPresentationSurfaceSize(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "surfaceWidthPixels",
            "surfaceHeightPixels"
        }
    .end annotation

    .line 297
    invoke-virtual {p0}, Lcom/google/vr/ndk/base/GvrLayout;->getGvrApi()Lcom/google/vr/ndk/base/GvrApi;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/vr/ndk/base/GvrApi;->setSurfaceSize(II)V

    return-void
.end method

.method public setPresentationView(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 258
    :try_start_0
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->impl:Lcom/google/vr/vrcore/library/api/IGvrLayout;

    invoke-static {p1}, Lcom/google/vr/vrcore/library/api/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/vr/vrcore/library/api/IObjectWrapper;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/vr/vrcore/library/api/IGvrLayout;->setPresentationView(Lcom/google/vr/vrcore/library/api/IObjectWrapper;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 260
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public setReentryIntent(Landroid/app/PendingIntent;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "reentryIntent"
        }
    .end annotation

    .line 538
    :try_start_0
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->impl:Lcom/google/vr/vrcore/library/api/IGvrLayout;

    invoke-static {p1}, Lcom/google/vr/vrcore/library/api/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/vr/vrcore/library/api/IObjectWrapper;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/vr/vrcore/library/api/IGvrLayout;->setReentryIntent(Lcom/google/vr/vrcore/library/api/IObjectWrapper;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 540
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public setStereoModeEnabled(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 510
    :try_start_0
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->impl:Lcom/google/vr/vrcore/library/api/IGvrLayout;

    invoke-interface {v0, p1}, Lcom/google/vr/vrcore/library/api/IGvrLayout;->setStereoModeEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 512
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public shutdown()V
    .locals 2

    const-string v0, "GvrLayout.shutdown"

    .line 231
    invoke-static {v0}, Lcom/google/vr/ndk/base/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 233
    :try_start_0
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->impl:Lcom/google/vr/vrcore/library/api/IGvrLayout;

    invoke-interface {v0}, Lcom/google/vr/vrcore/library/api/IGvrLayout;->shutdown()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    invoke-static {}, Lcom/google/vr/ndk/base/TraceCompat;->endSection()V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 235
    :try_start_1
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 237
    :goto_0
    invoke-static {}, Lcom/google/vr/ndk/base/TraceCompat;->endSection()V

    throw v0
.end method
