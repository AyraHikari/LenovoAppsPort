.class public interface abstract Lcom/google/vr/vrcore/performance/api/IThrottlingTriggerCallback;
.super Ljava/lang/Object;
.source "IThrottlingTriggerCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/vrcore/performance/api/IThrottlingTriggerCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onTriggerActivated(FJ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "temperature",
            "timeRemaining"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
