.class public interface abstract Lcom/zui/gallery/app/ControllerOverlay;
.super Ljava/lang/Object;
.source "ControllerOverlay.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/app/ControllerOverlay$ScrubbingListener;,
        Lcom/zui/gallery/app/ControllerOverlay$Listener;
    }
.end annotation


# virtual methods
.method public abstract getView()Landroid/view/View;
.end method

.method public abstract setCanReplay(Z)V
.end method

.method public abstract setListener(Lcom/zui/gallery/app/ControllerOverlay$Listener;)V
.end method

.method public abstract setTimes(IIIII)V
.end method

.method public abstract show()V
.end method

.method public abstract showEnded()V
.end method

.method public abstract showErrorMessage(Ljava/lang/String;)V
.end method

.method public abstract showLoading()V
.end method

.method public abstract showPaused()V
.end method

.method public abstract showPlaying()V
.end method
