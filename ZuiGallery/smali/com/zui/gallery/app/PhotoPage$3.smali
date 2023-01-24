.class Lcom/zui/gallery/app/PhotoPage$3;
.super Ljava/lang/Object;
.source "PhotoPage.java"

# interfaces
.implements Lcom/zui/gallery/app/PhotoDataAdapter$DataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/app/PhotoPage;->onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/app/PhotoPage;


# direct methods
.method constructor <init>(Lcom/zui/gallery/app/PhotoPage;)V
    .locals 0

    .line 750
    iput-object p1, p0, Lcom/zui/gallery/app/PhotoPage$3;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onLoadingFinished$1$PhotoPage$3()V
    .locals 1

    .line 816
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage$3;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-static {v0}, Lcom/zui/gallery/app/PhotoPage;->access$3600(Lcom/zui/gallery/app/PhotoPage;)V

    return-void
.end method

.method public synthetic lambda$onPhotoChanged$0$PhotoPage$3()V
    .locals 1

    .line 800
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage$3;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-static {v0}, Lcom/zui/gallery/app/PhotoPage;->access$3700(Lcom/zui/gallery/app/PhotoPage;)V

    return-void
.end method

.method public onLoadingFinished(Z)V
    .locals 4

    .line 816
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage$3;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-static {v0}, Lcom/zui/gallery/app/PhotoPage;->access$300(Lcom/zui/gallery/app/PhotoPage;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/zui/gallery/app/-$$Lambda$PhotoPage$3$cM2325ZKipKqinTqetIijpJyf6I;

    invoke-direct {v1, p0}, Lcom/zui/gallery/app/-$$Lambda$PhotoPage$3$cM2325ZKipKqinTqetIijpJyf6I;-><init>(Lcom/zui/gallery/app/PhotoPage$3;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 818
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadingFailed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PhotoPage"

    invoke-static {v0, p1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage$3;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-static {p1}, Lcom/zui/gallery/app/PhotoPage;->access$1800(Lcom/zui/gallery/app/PhotoPage;)Lcom/zui/gallery/app/PhotoPage$Model;

    move-result-object p1

    invoke-interface {p1}, Lcom/zui/gallery/app/PhotoPage$Model;->isEmpty()Z

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const-string p1, "1111111111111111"

    .line 820
    invoke-static {v0, p1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage$3;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-static {p1}, Lcom/zui/gallery/app/PhotoPage;->access$1800(Lcom/zui/gallery/app/PhotoPage;)Lcom/zui/gallery/app/PhotoPage$Model;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/zui/gallery/app/PhotoPage$Model;->getMediaItem(I)Lcom/zui/gallery/data/MediaItem;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 824
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage$3;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-static {v0, p1, v1}, Lcom/zui/gallery/app/PhotoPage;->access$1900(Lcom/zui/gallery/app/PhotoPage;Lcom/zui/gallery/data/MediaItem;Z)V

    goto/16 :goto_1

    .line 826
    :cond_0
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage$3;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-static {p1}, Lcom/zui/gallery/app/PhotoPage;->access$3400(Lcom/zui/gallery/app/PhotoPage;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 827
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "2222222222222222222222222222:(null == mMediaSet):"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/zui/gallery/app/PhotoPage$3;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-static {v2}, Lcom/zui/gallery/app/PhotoPage;->access$1600(Lcom/zui/gallery/app/PhotoPage;)Lcom/zui/gallery/data/FilterDeleteSet;

    move-result-object v2

    const/4 v3, 0x1

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " (null != mMediaSet && mMediaSet.getNumberOfDeletions() == 0):"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/zui/gallery/app/PhotoPage$3;->this$0:Lcom/zui/gallery/app/PhotoPage;

    .line 828
    invoke-static {v2}, Lcom/zui/gallery/app/PhotoPage;->access$1600(Lcom/zui/gallery/app/PhotoPage;)Lcom/zui/gallery/data/FilterDeleteSet;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/zui/gallery/app/PhotoPage$3;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-static {v2}, Lcom/zui/gallery/app/PhotoPage;->access$1600(Lcom/zui/gallery/app/PhotoPage;)Lcom/zui/gallery/data/FilterDeleteSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zui/gallery/data/FilterDeleteSet;->getNumberOfDeletions()I

    move-result v2

    if-nez v2, :cond_2

    move v1, v3

    :cond_2
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 827
    invoke-static {v0, p1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage$3;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-static {p1}, Lcom/zui/gallery/app/PhotoPage;->access$1600(Lcom/zui/gallery/app/PhotoPage;)Lcom/zui/gallery/data/FilterDeleteSet;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage$3;->this$0:Lcom/zui/gallery/app/PhotoPage;

    .line 834
    invoke-static {p1}, Lcom/zui/gallery/app/PhotoPage;->access$1600(Lcom/zui/gallery/app/PhotoPage;)Lcom/zui/gallery/data/FilterDeleteSet;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage$3;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-static {p1}, Lcom/zui/gallery/app/PhotoPage;->access$1600(Lcom/zui/gallery/app/PhotoPage;)Lcom/zui/gallery/data/FilterDeleteSet;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/gallery/data/FilterDeleteSet;->getNumberOfDeletions()I

    move-result p1

    if-nez p1, :cond_4

    .line 837
    :cond_3
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage$3;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-static {p1}, Lcom/zui/gallery/app/PhotoPage;->access$3500(Lcom/zui/gallery/app/PhotoPage;)V

    .line 840
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage$3;->this$0:Lcom/zui/gallery/app/PhotoPage;

    iget-object p1, p1, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getStateManager()Lcom/zui/gallery/app/StateManager;

    move-result-object p1

    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage$3;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-virtual {p1, v0}, Lcom/zui/gallery/app/StateManager;->finishState(Lcom/zui/gallery/app/ActivityState;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public onLoadingStarted()V
    .locals 0

    return-void
.end method

.method public onPhotoChanged(ILcom/zui/gallery/data/Path;)V
    .locals 4

    if-nez p2, :cond_0

    return-void

    .line 755
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage$3;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-static {v0}, Lcom/zui/gallery/app/PhotoPage;->access$2500(Lcom/zui/gallery/app/PhotoPage;)I

    move-result v0

    .line 756
    iget-object v1, p0, Lcom/zui/gallery/app/PhotoPage$3;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-static {v1, p1}, Lcom/zui/gallery/app/PhotoPage;->access$2502(Lcom/zui/gallery/app/PhotoPage;I)I

    .line 757
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage$3;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-static {p1}, Lcom/zui/gallery/app/PhotoPage;->access$2600(Lcom/zui/gallery/app/PhotoPage;)Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    .line 758
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage$3;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-static {p1}, Lcom/zui/gallery/app/PhotoPage;->access$2500(Lcom/zui/gallery/app/PhotoPage;)I

    move-result p1

    if-lez p1, :cond_1

    .line 759
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage$3;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-static {p1, v1}, Lcom/zui/gallery/app/PhotoPage;->access$1502(Lcom/zui/gallery/app/PhotoPage;Z)Z

    :cond_1
    if-nez v0, :cond_2

    .line 762
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage$3;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-static {p1}, Lcom/zui/gallery/app/PhotoPage;->access$2500(Lcom/zui/gallery/app/PhotoPage;)I

    move-result p1

    if-lez p1, :cond_2

    .line 763
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage$3;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-static {p1}, Lcom/zui/gallery/app/PhotoPage;->access$1000(Lcom/zui/gallery/app/PhotoPage;)Lcom/zui/gallery/app/AppBridge;

    move-result-object p1

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    const-string v0, "CameraToFilmstrip"

    const-string v2, "Swipe"

    .line 764
    invoke-static {v0, v2, p1}, Lcom/zui/gallery/util/UsageStatistics;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x2

    const/4 v2, 0x1

    if-ne v0, p1, :cond_3

    .line 767
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage$3;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-static {p1}, Lcom/zui/gallery/app/PhotoPage;->access$2500(Lcom/zui/gallery/app/PhotoPage;)I

    move-result p1

    if-ne p1, v2, :cond_3

    .line 768
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage$3;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-static {p1}, Lcom/zui/gallery/app/PhotoPage;->access$200(Lcom/zui/gallery/app/PhotoPage;)Lcom/zui/gallery/ui/PhotoView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/gallery/ui/PhotoView;->stopScrolling()V

    goto :goto_0

    :cond_3
    if-lt v0, v2, :cond_4

    .line 769
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage$3;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-static {p1}, Lcom/zui/gallery/app/PhotoPage;->access$2500(Lcom/zui/gallery/app/PhotoPage;)I

    move-result p1

    if-nez p1, :cond_4

    .line 770
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage$3;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-static {p1}, Lcom/zui/gallery/app/PhotoPage;->access$200(Lcom/zui/gallery/app/PhotoPage;)Lcom/zui/gallery/ui/PhotoView;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/zui/gallery/ui/PhotoView;->setWantPictureCenterCallbacks(Z)V

    .line 771
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage$3;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-static {p1, v2}, Lcom/zui/gallery/app/PhotoPage;->access$1502(Lcom/zui/gallery/app/PhotoPage;Z)Z

    .line 774
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage$3;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-static {p1}, Lcom/zui/gallery/app/PhotoPage;->access$1500(Lcom/zui/gallery/app/PhotoPage;)Z

    move-result p1

    if-nez p1, :cond_8

    if-eqz p2, :cond_8

    .line 776
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage$3;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-static {p1}, Lcom/zui/gallery/app/PhotoPage;->access$1800(Lcom/zui/gallery/app/PhotoPage;)Lcom/zui/gallery/app/PhotoPage$Model;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/zui/gallery/app/PhotoPage$Model;->getMediaItem(I)Lcom/zui/gallery/data/MediaItem;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 779
    iget-object p2, p0, Lcom/zui/gallery/app/PhotoPage$3;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-static {p2}, Lcom/zui/gallery/app/PhotoPage;->access$700(Lcom/zui/gallery/app/PhotoPage;)Lcom/zui/gallery/data/MediaItem;

    move-result-object p2

    if-eq p2, p1, :cond_7

    if-eqz p1, :cond_7

    .line 780
    iget-object p2, p0, Lcom/zui/gallery/app/PhotoPage$3;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-static {p2}, Lcom/zui/gallery/app/PhotoPage;->access$1100(Lcom/zui/gallery/app/PhotoPage;)V

    .line 781
    iget-object p2, p0, Lcom/zui/gallery/app/PhotoPage$3;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-static {p2}, Lcom/zui/gallery/app/PhotoPage;->access$700(Lcom/zui/gallery/app/PhotoPage;)Lcom/zui/gallery/data/MediaItem;

    move-result-object p2

    instance-of p2, p2, Lcom/zui/gallery/data/CloudImage;

    if-eqz p2, :cond_7

    iget-object p2, p0, Lcom/zui/gallery/app/PhotoPage$3;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-static {p2}, Lcom/zui/gallery/app/PhotoPage;->access$2700(Lcom/zui/gallery/app/PhotoPage;)Lzui/app/ProgressDialogX;

    move-result-object p2

    if-eqz p2, :cond_7

    .line 782
    iget-object p2, p0, Lcom/zui/gallery/app/PhotoPage$3;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-static {p2}, Lcom/zui/gallery/app/PhotoPage;->access$2700(Lcom/zui/gallery/app/PhotoPage;)Lzui/app/ProgressDialogX;

    move-result-object p2

    invoke-virtual {p2}, Lzui/app/ProgressDialogX;->dismiss()V

    .line 783
    iget-object p2, p0, Lcom/zui/gallery/app/PhotoPage$3;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-static {p2}, Lcom/zui/gallery/app/PhotoPage;->access$2800(Lcom/zui/gallery/app/PhotoPage;)Z

    move-result p2

    const-wide/16 v2, 0x1f4

    if-eqz p2, :cond_5

    .line 784
    iget-object p2, p0, Lcom/zui/gallery/app/PhotoPage$3;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-static {p2, v1}, Lcom/zui/gallery/app/PhotoPage;->access$2802(Lcom/zui/gallery/app/PhotoPage;Z)Z

    .line 786
    iget-object p2, p0, Lcom/zui/gallery/app/PhotoPage$3;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-static {p2}, Lcom/zui/gallery/app/PhotoPage;->access$300(Lcom/zui/gallery/app/PhotoPage;)Landroid/os/Handler;

    move-result-object p2

    new-instance v0, Lcom/zui/gallery/app/PhotoPage$3$1;

    invoke-direct {v0, p0}, Lcom/zui/gallery/app/PhotoPage$3$1;-><init>(Lcom/zui/gallery/app/PhotoPage$3;)V

    invoke-virtual {p2, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 794
    :cond_5
    iget-object p2, p0, Lcom/zui/gallery/app/PhotoPage$3;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-static {p2}, Lcom/zui/gallery/app/PhotoPage;->access$3100(Lcom/zui/gallery/app/PhotoPage;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 795
    iget-object p2, p0, Lcom/zui/gallery/app/PhotoPage$3;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-static {p2, v1}, Lcom/zui/gallery/app/PhotoPage;->access$3102(Lcom/zui/gallery/app/PhotoPage;Z)Z

    .line 796
    iget-object p2, p0, Lcom/zui/gallery/app/PhotoPage$3;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-virtual {p1}, Lcom/zui/gallery/data/MediaItem;->getPath()Lcom/zui/gallery/data/Path;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/zui/gallery/app/PhotoPage;->access$3200(Lcom/zui/gallery/app/PhotoPage;Lcom/zui/gallery/data/Path;)V

    goto :goto_1

    .line 797
    :cond_6
    iget-object p2, p0, Lcom/zui/gallery/app/PhotoPage$3;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-static {p2}, Lcom/zui/gallery/app/PhotoPage;->access$3300(Lcom/zui/gallery/app/PhotoPage;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 798
    iget-object p2, p0, Lcom/zui/gallery/app/PhotoPage$3;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-static {p2, v1}, Lcom/zui/gallery/app/PhotoPage;->access$3302(Lcom/zui/gallery/app/PhotoPage;Z)Z

    .line 800
    iget-object p2, p0, Lcom/zui/gallery/app/PhotoPage$3;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-static {p2}, Lcom/zui/gallery/app/PhotoPage;->access$300(Lcom/zui/gallery/app/PhotoPage;)Landroid/os/Handler;

    move-result-object p2

    new-instance v0, Lcom/zui/gallery/app/-$$Lambda$PhotoPage$3$MkrFCCIRnpHWJ_-9mITvS2zpsK0;

    invoke-direct {v0, p0}, Lcom/zui/gallery/app/-$$Lambda$PhotoPage$3$MkrFCCIRnpHWJ_-9mITvS2zpsK0;-><init>(Lcom/zui/gallery/app/PhotoPage$3;)V

    invoke-virtual {p2, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 805
    :cond_7
    :goto_1
    iget-object p2, p0, Lcom/zui/gallery/app/PhotoPage$3;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-static {p2, p1, v1}, Lcom/zui/gallery/app/PhotoPage;->access$1900(Lcom/zui/gallery/app/PhotoPage;Lcom/zui/gallery/data/MediaItem;Z)V

    :cond_8
    return-void
.end method
