.class public interface abstract Lcom/zui/wifip2p/service/IServiceManager;
.super Ljava/lang/Object;
.source "IServiceManager.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/wifip2p/service/IServiceManager$Stub;,
        Lcom/zui/wifip2p/service/IServiceManager$Default;
    }
.end annotation


# virtual methods
.method public abstract getService(I)Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
