.class public Lcom/zui/gallery/app/AlbumPage$DeleteProgressListener;
.super Lcom/zui/gallery/ui/WakeLockHoldingProgressListener;
.source "AlbumPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/app/AlbumPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DeleteProgressListener"
.end annotation


# static fields
.field private static final STATUS_ANIMATIING:I = 0x1

.field private static final STATUS_ANIMATION_COMPLETE:I = 0x2

.field private static final STATUS_NONE:I = 0x0

.field private static final STATUS_PROGRESS_COMPLETE:I = 0x3


# instance fields
.field mStatus:I

.field final synthetic this$0:Lcom/zui/gallery/app/AlbumPage;


# direct methods
.method public constructor <init>(Lcom/zui/gallery/app/AlbumPage;Lcom/zui/gallery/app/AbstractGalleryActivity;Ljava/lang/String;)V
    .locals 0

    .line 1650
    iput-object p1, p0, Lcom/zui/gallery/app/AlbumPage$DeleteProgressListener;->this$0:Lcom/zui/gallery/app/AlbumPage;

    .line 1651
    invoke-direct {p0, p2, p3}, Lcom/zui/gallery/ui/WakeLockHoldingProgressListener;-><init>(Lcom/zui/gallery/app/AbstractGalleryActivity;Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 1648
    iput p2, p0, Lcom/zui/gallery/app/AlbumPage$DeleteProgressListener;->mStatus:I

    .line 1653
    iget-object p1, p1, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->animDelete(Z)V

    return-void
.end method


# virtual methods
.method public onConfirmDialogDismissed(Z)V
    .locals 2

    .line 1674
    invoke-super {p0, p1}, Lcom/zui/gallery/ui/WakeLockHoldingProgressListener;->onConfirmDialogDismissed(Z)V

    if-eqz p1, :cond_0

    .line 1676
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumPage$DeleteProgressListener;->this$0:Lcom/zui/gallery/app/AlbumPage;

    invoke-static {p1}, Lcom/zui/gallery/app/AlbumPage;->access$100(Lcom/zui/gallery/app/AlbumPage;)Lcom/zui/gallery/app/AlbumDataLoader;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/zui/gallery/app/AlbumDataLoader;->setGlAnimating(Z)V

    .line 1677
    new-instance p1, Lcom/zui/gallery/app/AlbumPage$DeleteProgressListener$1;

    invoke-direct {p1, p0}, Lcom/zui/gallery/app/AlbumPage$DeleteProgressListener$1;-><init>(Lcom/zui/gallery/app/AlbumPage$DeleteProgressListener;)V

    .line 1700
    iget-object v1, p0, Lcom/zui/gallery/app/AlbumPage$DeleteProgressListener;->this$0:Lcom/zui/gallery/app/AlbumPage;

    invoke-static {v1}, Lcom/zui/gallery/app/AlbumPage;->access$300(Lcom/zui/gallery/app/AlbumPage;)Lcom/zui/gallery/ui/AlbumSlotRenderer;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/zui/gallery/ui/AlbumSlotRenderer;->setAnimating(Z)V

    .line 1701
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage$DeleteProgressListener;->this$0:Lcom/zui/gallery/app/AlbumPage;

    invoke-static {v0}, Lcom/zui/gallery/app/AlbumPage;->access$300(Lcom/zui/gallery/app/AlbumPage;)Lcom/zui/gallery/ui/AlbumSlotRenderer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zui/gallery/ui/AlbumSlotRenderer;->removeAnim(Lcom/zui/gallery/anim/GLAnimation$AnimationListener;)V

    goto :goto_0

    .line 1703
    :cond_0
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumPage$DeleteProgressListener;->this$0:Lcom/zui/gallery/app/AlbumPage;

    invoke-static {p1}, Lcom/zui/gallery/app/AlbumPage;->access$100(Lcom/zui/gallery/app/AlbumPage;)Lcom/zui/gallery/app/AlbumDataLoader;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/zui/gallery/app/AlbumDataLoader;->setGlAnimating(Z)V

    .line 1704
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumPage$DeleteProgressListener;->this$0:Lcom/zui/gallery/app/AlbumPage;

    iget-object p1, p1, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p1, v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->animDelete(Z)V

    :goto_0
    return-void
.end method

.method public onProgressComplete(I)Z
    .locals 4

    .line 1659
    invoke-super {p0, p1}, Lcom/zui/gallery/ui/WakeLockHoldingProgressListener;->onProgressComplete(I)Z

    const-string/jumbo p1, "tianlianglaa"

    const-string v0, "onProgressconplete"

    .line 1660
    invoke-static {p1, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1661
    iget v1, p0, Lcom/zui/gallery/app/AlbumPage$DeleteProgressListener;->mStatus:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v2, v1, :cond_0

    const/4 p1, 0x3

    .line 1662
    iput p1, p0, Lcom/zui/gallery/app/AlbumPage$DeleteProgressListener;->mStatus:I

    return v3

    .line 1666
    :cond_0
    iput v3, p0, Lcom/zui/gallery/app/AlbumPage$DeleteProgressListener;->mStatus:I

    .line 1667
    iget-object v1, p0, Lcom/zui/gallery/app/AlbumPage$DeleteProgressListener;->this$0:Lcom/zui/gallery/app/AlbumPage;

    invoke-static {v1}, Lcom/zui/gallery/app/AlbumPage;->access$300(Lcom/zui/gallery/app/AlbumPage;)Lcom/zui/gallery/ui/AlbumSlotRenderer;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/zui/gallery/ui/AlbumSlotRenderer;->setAnimating(Z)V

    .line 1668
    invoke-static {p1, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public onProgressStart()V
    .locals 1

    .line 1712
    invoke-super {p0}, Lcom/zui/gallery/ui/WakeLockHoldingProgressListener;->onProgressStart()V

    const/4 v0, 0x1

    .line 1713
    iput v0, p0, Lcom/zui/gallery/app/AlbumPage$DeleteProgressListener;->mStatus:I

    return-void
.end method
