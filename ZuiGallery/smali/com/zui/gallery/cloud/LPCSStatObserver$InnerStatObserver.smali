.class final Lcom/zui/gallery/cloud/LPCSStatObserver$InnerStatObserver;
.super Lcom/zui/cloudservice/lpcs/ILPCSStatObserver$Stub;
.source "LPCSStatObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/cloud/LPCSStatObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InnerStatObserver"
.end annotation


# instance fields
.field private mDispatcher:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/zui/gallery/cloud/LPCSStatObserver;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/zui/gallery/cloud/LPCSStatObserver;


# direct methods
.method constructor <init>(Lcom/zui/gallery/cloud/LPCSStatObserver;Lcom/zui/gallery/cloud/LPCSStatObserver;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/zui/gallery/cloud/LPCSStatObserver$InnerStatObserver;->this$0:Lcom/zui/gallery/cloud/LPCSStatObserver;

    invoke-direct {p0}, Lcom/zui/cloudservice/lpcs/ILPCSStatObserver$Stub;-><init>()V

    .line 75
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/zui/gallery/cloud/LPCSStatObserver$InnerStatObserver;->mDispatcher:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onObserve(ILandroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/zui/gallery/cloud/LPCSStatObserver$InnerStatObserver;->mDispatcher:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/cloud/LPCSStatObserver;

    if-eqz v0, :cond_0

    .line 82
    invoke-static {v0, p1, p2}, Lcom/zui/gallery/cloud/LPCSStatObserver;->access$000(Lcom/zui/gallery/cloud/LPCSStatObserver;ILandroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onStatChange(ILandroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/zui/gallery/cloud/LPCSStatObserver$InnerStatObserver;->mDispatcher:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/cloud/LPCSStatObserver;

    if-eqz v0, :cond_0

    .line 90
    invoke-static {v0, p1, p2}, Lcom/zui/gallery/cloud/LPCSStatObserver;->access$100(Lcom/zui/gallery/cloud/LPCSStatObserver;ILandroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onSyncEnd(ZLjava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lcom/zui/gallery/cloud/LPCSStatObserver$InnerStatObserver;->mDispatcher:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/cloud/LPCSStatObserver;

    if-eqz v0, :cond_0

    .line 106
    invoke-static {v0, p1, p2, p3}, Lcom/zui/gallery/cloud/LPCSStatObserver;->access$300(Lcom/zui/gallery/cloud/LPCSStatObserver;ZLjava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onSyncProgress(IILandroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lcom/zui/gallery/cloud/LPCSStatObserver$InnerStatObserver;->mDispatcher:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/cloud/LPCSStatObserver;

    if-eqz v0, :cond_0

    .line 98
    invoke-static {v0, p1, p2, p3}, Lcom/zui/gallery/cloud/LPCSStatObserver;->access$200(Lcom/zui/gallery/cloud/LPCSStatObserver;IILandroid/os/Bundle;)V

    :cond_0
    return-void
.end method
