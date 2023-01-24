.class Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$DeleteProgressListener;
.super Lcom/zui/gallery/ui/WakeLockHoldingProgressListener;
.source "LocalTimeAlbumPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeleteProgressListener"
.end annotation


# static fields
.field private static final STATUS_ANIMATIING:I = 0x1

.field private static final STATUS_ANIMATION_COMPLETE:I = 0x2

.field private static final STATUS_NONE:I = 0x0

.field private static final STATUS_PROGRESS_COMPLETE:I = 0x3


# instance fields
.field mStatus:I

.field final synthetic this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;


# direct methods
.method public constructor <init>(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;Lcom/zui/gallery/app/AbstractGalleryActivity;Ljava/lang/String;)V
    .locals 0

    .line 1533
    iput-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$DeleteProgressListener;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    .line 1534
    invoke-direct {p0, p2, p3}, Lcom/zui/gallery/ui/WakeLockHoldingProgressListener;-><init>(Lcom/zui/gallery/app/AbstractGalleryActivity;Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 1531
    iput p2, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$DeleteProgressListener;->mStatus:I

    .line 1537
    invoke-static {p1}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->access$6200(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Lcom/zui/gallery/app/AbstractGalleryActivity;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->animDelete(Z)V

    return-void
.end method


# virtual methods
.method public onConfirmDialogDismissed(Z)V
    .locals 3

    .line 1568
    invoke-super {p0, p1}, Lcom/zui/gallery/ui/WakeLockHoldingProgressListener;->onConfirmDialogDismissed(Z)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1570
    new-instance p1, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$DeleteProgressListener$2;

    invoke-direct {p1, p0}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$DeleteProgressListener$2;-><init>(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$DeleteProgressListener;)V

    .line 1605
    iget-object v1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$DeleteProgressListener;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    invoke-static {v1}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->access$1300(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->setAnimating(Z)V

    .line 1606
    iget-object v1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$DeleteProgressListener;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    invoke-static {v1}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->access$1300(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->removeAnim(Lcom/zui/gallery/anim/GLAnimation$AnimationListener;)V

    .line 1607
    iget-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$DeleteProgressListener;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    invoke-static {p1}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->access$6300(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Lcom/zui/gallery/app/AbstractGalleryActivity;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->animDelete(Z)V

    goto :goto_0

    .line 1609
    :cond_0
    iget-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$DeleteProgressListener;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    invoke-static {p1}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->access$6400(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Lcom/zui/gallery/app/AbstractGalleryActivity;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->animDelete(Z)V

    :goto_0
    return-void
.end method

.method public onProgressComplete(I)Z
    .locals 3

    .line 1543
    invoke-super {p0, p1}, Lcom/zui/gallery/ui/WakeLockHoldingProgressListener;->onProgressComplete(I)Z

    .line 1546
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$DeleteProgressListener$1;

    invoke-direct {v0, p0}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$DeleteProgressListener$1;-><init>(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$DeleteProgressListener;)V

    const-wide/16 v1, 0x190

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1556
    iget p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$DeleteProgressListener;->mStatus:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne v0, p1, :cond_0

    const/4 p1, 0x3

    .line 1557
    iput p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$DeleteProgressListener;->mStatus:I

    return v1

    .line 1561
    :cond_0
    iput v1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$DeleteProgressListener;->mStatus:I

    .line 1562
    iget-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$DeleteProgressListener;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    invoke-static {p1}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->access$1300(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->setAnimating(Z)V

    return v0
.end method

.method public onProgressStart()V
    .locals 1

    .line 1616
    invoke-super {p0}, Lcom/zui/gallery/ui/WakeLockHoldingProgressListener;->onProgressStart()V

    const/4 v0, 0x1

    .line 1617
    iput v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$DeleteProgressListener;->mStatus:I

    return-void
.end method
