.class public abstract Lcom/zui/gallery/cloud/LPCSStatObserver;
.super Ljava/lang/Object;
.source "LPCSStatObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/cloud/LPCSStatObserver$InnerStatObserver;
    }
.end annotation


# instance fields
.field private final innerStatObserver:Lcom/zui/gallery/cloud/LPCSStatObserver$InnerStatObserver;

.field private final mMainHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Lcom/zui/gallery/cloud/LPCSStatObserver$InnerStatObserver;

    invoke-direct {v0, p0, p0}, Lcom/zui/gallery/cloud/LPCSStatObserver$InnerStatObserver;-><init>(Lcom/zui/gallery/cloud/LPCSStatObserver;Lcom/zui/gallery/cloud/LPCSStatObserver;)V

    iput-object v0, p0, Lcom/zui/gallery/cloud/LPCSStatObserver;->innerStatObserver:Lcom/zui/gallery/cloud/LPCSStatObserver$InnerStatObserver;

    .line 19
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/zui/gallery/cloud/LPCSStatObserver;->mMainHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/zui/gallery/cloud/LPCSStatObserver;ILandroid/os/Bundle;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/zui/gallery/cloud/LPCSStatObserver;->onInnerObserve(ILandroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$100(Lcom/zui/gallery/cloud/LPCSStatObserver;ILandroid/os/Bundle;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/zui/gallery/cloud/LPCSStatObserver;->onInnerStatChange(ILandroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$200(Lcom/zui/gallery/cloud/LPCSStatObserver;IILandroid/os/Bundle;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2, p3}, Lcom/zui/gallery/cloud/LPCSStatObserver;->onInnerSyncProgress(IILandroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$300(Lcom/zui/gallery/cloud/LPCSStatObserver;ZLjava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2, p3}, Lcom/zui/gallery/cloud/LPCSStatObserver;->onInnerSyncEnd(ZLjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private onInnerObserve(ILandroid/os/Bundle;)V
    .locals 2

    .line 31
    iget-object v0, p0, Lcom/zui/gallery/cloud/LPCSStatObserver;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/zui/gallery/cloud/LPCSStatObserver$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/zui/gallery/cloud/LPCSStatObserver$1;-><init>(Lcom/zui/gallery/cloud/LPCSStatObserver;ILandroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private onInnerStatChange(ILandroid/os/Bundle;)V
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/zui/gallery/cloud/LPCSStatObserver;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/zui/gallery/cloud/LPCSStatObserver$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/zui/gallery/cloud/LPCSStatObserver$2;-><init>(Lcom/zui/gallery/cloud/LPCSStatObserver;ILandroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private onInnerSyncEnd(ZLjava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/zui/gallery/cloud/LPCSStatObserver;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/zui/gallery/cloud/LPCSStatObserver$4;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/zui/gallery/cloud/LPCSStatObserver$4;-><init>(Lcom/zui/gallery/cloud/LPCSStatObserver;ZLjava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private onInnerSyncProgress(IILandroid/os/Bundle;)V
    .locals 2

    .line 52
    iget-object v0, p0, Lcom/zui/gallery/cloud/LPCSStatObserver;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/zui/gallery/cloud/LPCSStatObserver$3;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/zui/gallery/cloud/LPCSStatObserver$3;-><init>(Lcom/zui/gallery/cloud/LPCSStatObserver;IILandroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public getILPCSStatObserver()Lcom/zui/cloudservice/lpcs/ILPCSStatObserver;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/zui/gallery/cloud/LPCSStatObserver;->innerStatObserver:Lcom/zui/gallery/cloud/LPCSStatObserver$InnerStatObserver;

    return-object v0
.end method

.method public onObserve(ILandroid/os/Bundle;)V
    .locals 0

    .line 27
    invoke-virtual {p0, p1, p2}, Lcom/zui/gallery/cloud/LPCSStatObserver;->onStatChange(ILandroid/os/Bundle;)V

    return-void
.end method

.method public abstract onStatChange(ILandroid/os/Bundle;)V
.end method

.method public abstract onSyncEnd(ZLjava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract onSyncProgress(IILandroid/os/Bundle;)V
.end method
