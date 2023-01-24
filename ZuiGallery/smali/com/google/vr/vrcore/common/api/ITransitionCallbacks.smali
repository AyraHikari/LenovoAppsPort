.class public interface abstract Lcom/google/vr/vrcore/common/api/ITransitionCallbacks;
.super Ljava/lang/Object;
.source "ITransitionCallbacks.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/vrcore/common/api/ITransitionCallbacks$Stub;
    }
.end annotation


# virtual methods
.method public abstract onTransitionComplete()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
