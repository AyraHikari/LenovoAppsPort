.class Lcom/zui/gallery/app/PhotoPage$22;
.super Ljava/lang/Object;
.source "PhotoPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/app/PhotoPage;->setLeftButtonBackListener()V
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

    .line 4702
    iput-object p1, p0, Lcom/zui/gallery/app/PhotoPage$22;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    const-string/jumbo p1, "smallscreen"

    const-string v0, "back click"

    .line 4705
    invoke-static {p1, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4706
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage$22;->this$0:Lcom/zui/gallery/app/PhotoPage;

    iget-object p1, p1, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->isFinishWhenClickBack()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage$22;->this$0:Lcom/zui/gallery/app/PhotoPage;

    iget-object p1, p1, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->isCameraCall()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage$22;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-static {p1}, Lcom/zui/gallery/app/PhotoPage;->access$700(Lcom/zui/gallery/app/PhotoPage;)Lcom/zui/gallery/data/MediaItem;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage$22;->this$0:Lcom/zui/gallery/app/PhotoPage;

    .line 4707
    invoke-static {p1}, Lcom/zui/gallery/app/PhotoPage;->access$700(Lcom/zui/gallery/app/PhotoPage;)Lcom/zui/gallery/data/MediaItem;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/gallery/data/MediaItem;->getContentUri()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "content://media/"

    .line 4708
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage$22;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-static {p1}, Lcom/zui/gallery/app/PhotoPage;->access$700(Lcom/zui/gallery/app/PhotoPage;)Lcom/zui/gallery/data/MediaItem;

    move-result-object p1

    instance-of p1, p1, Lcom/zui/gallery/data/CloudImage;

    if-eqz p1, :cond_3

    :cond_0
    const-string p1, "PhotoPage"

    const-string v0, "onBack press "

    .line 4709
    invoke-static {p1, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4710
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage$22;->this$0:Lcom/zui/gallery/app/PhotoPage;

    iget-object p1, p1, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    iget-boolean p1, p1, Lcom/zui/gallery/app/AbstractGalleryActivity;->isShortCutsCall:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage$22;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-static {p1}, Lcom/zui/gallery/app/PhotoPage;->access$5700(Lcom/zui/gallery/app/PhotoPage;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 4713
    :cond_1
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage$22;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-static {p1}, Lcom/zui/gallery/app/PhotoPage;->access$5800(Lcom/zui/gallery/app/PhotoPage;)V

    goto :goto_1

    .line 4711
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage$22;->this$0:Lcom/zui/gallery/app/PhotoPage;

    iget-object p1, p1, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->finish()V

    goto :goto_1

    .line 4716
    :cond_3
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage$22;->this$0:Lcom/zui/gallery/app/PhotoPage;

    iget-object p1, p1, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->isCameraCall()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage$22;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-virtual {p1}, Lcom/zui/gallery/app/PhotoPage;->isContinuousShot()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 4717
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage$22;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-virtual {p1}, Lcom/zui/gallery/app/PhotoPage;->onBackPressed()V

    goto :goto_1

    .line 4719
    :cond_4
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage$22;->this$0:Lcom/zui/gallery/app/PhotoPage;

    iget-object p1, p1, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->finish()V

    :goto_1
    return-void
.end method
