.class public interface abstract Lcom/zui/wifip2p/IFileOperationCallback;
.super Ljava/lang/Object;
.source "IFileOperationCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/wifip2p/IFileOperationCallback$Stub;,
        Lcom/zui/wifip2p/IFileOperationCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract onConnectionStateChange(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onSendFileStatus(ILandroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
