.class public Lcom/zui/gallery/ui/WakeLockHoldingProgressListener;
.super Ljava/lang/Object;
.source "WakeLockHoldingProgressListener.java"

# interfaces
.implements Lcom/zui/gallery/ui/MenuExecutor$ProgressListener;


# static fields
.field private static final DEFAULT_WAKE_LOCK_LABEL:Ljava/lang/String; = "Gallery Progress Listener"


# instance fields
.field private mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Lcom/zui/gallery/app/AbstractGalleryActivity;)V
    .locals 1

    const-string v0, "Gallery Progress Listener"

    .line 31
    invoke-direct {p0, p1, v0}, Lcom/zui/gallery/ui/WakeLockHoldingProgressListener;-><init>(Lcom/zui/gallery/app/AbstractGalleryActivity;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/zui/gallery/app/AbstractGalleryActivity;Ljava/lang/String;)V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/zui/gallery/ui/WakeLockHoldingProgressListener;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const-string v0, "power"

    .line 37
    invoke-virtual {p1, v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    const/4 v0, 0x6

    .line 38
    invoke-virtual {p1, v0, p2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/ui/WakeLockHoldingProgressListener;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-void
.end method


# virtual methods
.method protected getActivity()Lcom/zui/gallery/app/AbstractGalleryActivity;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/zui/gallery/ui/WakeLockHoldingProgressListener;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    return-object v0
.end method

.method public onConfirmDialogDismissed(Z)V
    .locals 0

    return-void
.end method

.method public onConfirmDialogShown()V
    .locals 0

    return-void
.end method

.method public onProgressComplete(I)Z
    .locals 0

    .line 45
    iget-object p1, p0, Lcom/zui/gallery/ui/WakeLockHoldingProgressListener;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 46
    iget-object p1, p0, Lcom/zui/gallery/ui/WakeLockHoldingProgressListener;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onProgressStart()V
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/zui/gallery/ui/WakeLockHoldingProgressListener;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    return-void
.end method

.method public onProgressUpdate(I)V
    .locals 0

    return-void
.end method
