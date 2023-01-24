.class public interface abstract Lcom/google/vr/vrcore/controller/api/IControllerServiceListener;
.super Ljava/lang/Object;
.source "IControllerServiceListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/vrcore/controller/api/IControllerServiceListener$Stub;
    }
.end annotation


# static fields
.field public static final EVENT_AVAILABLE_CONTROLLERS_CHANGED:I = 0x1


# virtual methods
.method public abstract getApiVersion()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onControllerServiceEvent(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "eventId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
