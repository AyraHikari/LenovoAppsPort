.class public interface abstract Lcom/google/vr/ndk/base/GvrLayout$ExternalSurfaceListener;
.super Ljava/lang/Object;
.source "GvrLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/ndk/base/GvrLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ExternalSurfaceListener"
.end annotation


# virtual methods
.method public abstract onFrameAvailable()V
.end method

.method public abstract onSurfaceAvailable(Landroid/view/Surface;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "surface"
        }
    .end annotation
.end method
