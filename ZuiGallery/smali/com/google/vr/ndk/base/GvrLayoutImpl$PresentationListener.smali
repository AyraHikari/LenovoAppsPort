.class interface abstract Lcom/google/vr/ndk/base/GvrLayoutImpl$PresentationListener;
.super Ljava/lang/Object;
.source "GvrLayoutImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/ndk/base/GvrLayoutImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "PresentationListener"
.end annotation


# virtual methods
.method public abstract onPresentationStarted(Landroid/view/Display;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "presentationDisplay"
        }
    .end annotation
.end method

.method public abstract onPresentationStopped()V
.end method
