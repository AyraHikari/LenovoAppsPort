.class public interface abstract Lcom/zui/cloudservice/lpcs/ILPCSResultCallback;
.super Ljava/lang/Object;
.source "ILPCSResultCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/cloudservice/lpcs/ILPCSResultCallback$Stub;,
        Lcom/zui/cloudservice/lpcs/ILPCSResultCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract onResult(Lcom/zui/cloudservice/lpcs/LPCSResult;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
