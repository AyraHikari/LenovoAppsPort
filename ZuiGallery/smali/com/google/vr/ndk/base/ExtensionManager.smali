.class public interface abstract Lcom/google/vr/ndk/base/ExtensionManager;
.super Ljava/lang/Object;
.source "ExtensionManager.java"


# virtual methods
.method public abstract initialize(Landroid/view/ViewGroup;Lcom/google/vr/ndk/base/GvrApi;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "parentView",
            "gvrApi"
        }
    .end annotation
.end method

.method public abstract onPause()V
.end method

.method public abstract onResume()V
.end method

.method public abstract reportTelemetry(Lcom/google/vr/vrcore/logging/api/IVrCoreLoggingService;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vrCoreLoggingService"
        }
    .end annotation
.end method

.method public abstract setEnabled(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation
.end method

.method public abstract shutdown()V
.end method
