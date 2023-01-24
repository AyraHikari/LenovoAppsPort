.class public Lcom/google/vr/ndk/base/GvrLayoutFactory;
.super Ljava/lang/Object;
.source "GvrLayoutFactory.java"


# static fields
.field static final MIN_VRCORE_API_VERSION:I = 0x11

.field private static final TAG:Ljava/lang/String; = "GvrLayoutFactory"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/google/vr/vrcore/library/api/IGvrLayout;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 44
    invoke-static {p0}, Lcom/google/vr/ndk/base/GvrLayoutFactory;->tryCreateFromVrCorePackage(Landroid/content/Context;)Lcom/google/vr/vrcore/library/api/IGvrLayout;

    move-result-object v0

    if-nez v0, :cond_0

    .line 47
    invoke-static {p0}, Lcom/google/vr/ndk/base/GvrLayoutFactory;->createFromCurrentPackage(Landroid/content/Context;)Lcom/google/vr/vrcore/library/api/IGvrLayout;

    move-result-object v0

    const-string p0, "GvrLayoutFactory"

    const-string v1, "Loaded GvrLayout from SDK."

    .line 48
    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v0
.end method

.method private static createFromCurrentPackage(Landroid/content/Context;)Lcom/google/vr/vrcore/library/api/IGvrLayout;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 68
    new-instance v0, Lcom/google/vr/ndk/base/GvrLayoutImplWrapper;

    new-instance v1, Lcom/google/vr/ndk/base/GvrLayoutImpl;

    invoke-direct {v1, p0}, Lcom/google/vr/ndk/base/GvrLayoutImpl;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Lcom/google/vr/ndk/base/GvrLayoutImplWrapper;-><init>(Lcom/google/vr/ndk/base/GvrLayoutImpl;)V

    return-object v0
.end method

.method public static createFromCurrentPackageWithExtensions(Landroid/content/Context;Lcom/google/vr/ndk/base/ExtensionManager;)Lcom/google/vr/vrcore/library/api/IGvrLayout;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "extensionManager"
        }
    .end annotation

    .line 64
    new-instance v0, Lcom/google/vr/ndk/base/GvrLayoutImplWrapper;

    new-instance v1, Lcom/google/vr/ndk/base/GvrLayoutImpl;

    invoke-direct {v1, p0, p1}, Lcom/google/vr/ndk/base/GvrLayoutImpl;-><init>(Landroid/content/Context;Lcom/google/vr/ndk/base/ExtensionManager;)V

    invoke-direct {v0, v1}, Lcom/google/vr/ndk/base/GvrLayoutImplWrapper;-><init>(Lcom/google/vr/ndk/base/GvrLayoutImpl;)V

    return-object v0
.end method

.method private static tryCreateFromVrCorePackage(Landroid/content/Context;)Lcom/google/vr/vrcore/library/api/IGvrLayout;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 73
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/vr/vrcore/base/api/VrCoreUtils;->isVrCorePackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    invoke-static {p0}, Lcom/google/vr/ndk/base/GvrLayoutFactory;->createFromCurrentPackage(Landroid/content/Context;)Lcom/google/vr/vrcore/library/api/IGvrLayout;

    move-result-object p0

    return-object p0

    .line 77
    :cond_0
    instance-of v0, p0, Lcom/google/vr/cardboard/VrContextWrapper;

    if-nez v0, :cond_6

    .line 84
    invoke-static {p0}, Lcom/google/vr/ndk/base/GvrApi;->usingDynamicLibrary(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "GvrLayoutFactory"

    if-nez v0, :cond_1

    const-string p0, "Dynamic library loading disabled, using built-in GvrLayout implementation."

    .line 85
    invoke-static {v2, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 89
    :cond_1
    invoke-static {p0}, Lcom/google/vr/ndk/base/SdkConfigurationReader;->getParams(Landroid/content/Context;)Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;

    move-result-object v0

    .line 90
    iget-object v3, v0, Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;->allowDynamicJavaLibraryLoading:Ljava/lang/Boolean;

    if-eqz v3, :cond_5

    iget-object v0, v0, Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;->allowDynamicJavaLibraryLoading:Ljava/lang/Boolean;

    .line 91
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 98
    :cond_2
    :try_start_0
    invoke-static {p0}, Lcom/google/vr/vrcore/base/api/VrCoreUtils;->getVrCoreClientApiVersion(Landroid/content/Context;)I

    move-result v0

    const/16 v3, 0x11

    if-ge v0, v3, :cond_3

    const-string p0, "VrCore outdated, using built-in GvrLayout implementation."

    .line 99
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/google/vr/vrcore/base/api/VrCoreNotAvailableException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v1

    .line 108
    :cond_3
    :try_start_1
    invoke-static {p0}, Lcom/google/vr/vrcore/library/api/VrCoreLoader;->getRemoteContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    .line 109
    invoke-static {p0}, Lcom/google/vr/vrcore/library/api/VrCoreLoader;->getRemoteCreator(Landroid/content/Context;)Lcom/google/vr/vrcore/library/api/IVrCreator;

    move-result-object v3

    .line 112
    invoke-static {v0}, Lcom/google/vr/vrcore/library/api/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/vr/vrcore/library/api/IObjectWrapper;

    move-result-object v0

    invoke-static {p0}, Lcom/google/vr/vrcore/library/api/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/vr/vrcore/library/api/IObjectWrapper;

    move-result-object p0

    .line 111
    invoke-interface {v3, v0, p0}, Lcom/google/vr/vrcore/library/api/IVrCreator;->newGvrLayout(Lcom/google/vr/vrcore/library/api/IObjectWrapper;Lcom/google/vr/vrcore/library/api/IObjectWrapper;)Lcom/google/vr/vrcore/library/api/IGvrLayout;

    move-result-object p0

    if-eqz p0, :cond_4

    const-string v0, "Successfully loaded GvrLayout from VrCore."

    .line 115
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    const-string v0, "GvrLayout creation from VrCore failed."

    .line 118
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    return-object p0

    :catch_0
    move-exception p0

    .line 122
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x28

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Failed to load GvrLayout from VrCore:\n  "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :catch_1
    const-string p0, "VrCore unavailable, using built-in GvrLayout implementation."

    .line 103
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_5
    :goto_1
    const-string p0, "Dynamic Java library loading disabled, using built-in GvrLayout implementation."

    .line 92
    invoke-static {v2, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 78
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "VrContextWrapper only supported within VrCore."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
