.class Lcom/zui/gallery/app/PhotoPage$5;
.super Ljava/lang/Thread;
.source "PhotoPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/app/PhotoPage;->downloadCloudImage()V
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

    .line 1575
    iput-object p1, p0, Lcom/zui/gallery/app/PhotoPage$5;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$run$0$PhotoPage$5()V
    .locals 3

    .line 1582
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage$5;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-static {v0}, Lcom/zui/gallery/app/PhotoPage;->access$2700(Lcom/zui/gallery/app/PhotoPage;)Lzui/app/ProgressDialogX;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1583
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage$5;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-static {v0}, Lcom/zui/gallery/app/PhotoPage;->access$2700(Lcom/zui/gallery/app/PhotoPage;)Lzui/app/ProgressDialogX;

    move-result-object v0

    invoke-virtual {v0}, Lzui/app/ProgressDialogX;->dismiss()V

    .line 1585
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage$5;->this$0:Lcom/zui/gallery/app/PhotoPage;

    iget-object v0, v0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const v1, 0x7f100075

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public synthetic lambda$run$1$PhotoPage$5()V
    .locals 1

    .line 1588
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage$5;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-static {v0}, Lcom/zui/gallery/app/PhotoPage;->access$2700(Lcom/zui/gallery/app/PhotoPage;)Lzui/app/ProgressDialogX;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1589
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage$5;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-static {v0}, Lcom/zui/gallery/app/PhotoPage;->access$2700(Lcom/zui/gallery/app/PhotoPage;)Lzui/app/ProgressDialogX;

    move-result-object v0

    invoke-virtual {v0}, Lzui/app/ProgressDialogX;->dismiss()V

    .line 1591
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage$5;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-static {v0}, Lcom/zui/gallery/app/PhotoPage;->access$3900(Lcom/zui/gallery/app/PhotoPage;)Lcom/zui/gallery/app/GalleryApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/zui/gallery/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/gallery/cloud/CloudUtils;->startSpaceErrorActivity(Landroid/content/Context;)V

    return-void
.end method

.method public run()V
    .locals 5

    .line 1579
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage$5;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-static {v0}, Lcom/zui/gallery/app/PhotoPage;->access$3900(Lcom/zui/gallery/app/PhotoPage;)Lcom/zui/gallery/app/GalleryApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/zui/gallery/app/GalleryApp;->getCloudManager()Lcom/zui/gallery/cloud/CloudManager;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/gallery/app/PhotoPage$5;->this$0:Lcom/zui/gallery/app/PhotoPage;

    .line 1580
    invoke-static {v1}, Lcom/zui/gallery/app/PhotoPage;->access$700(Lcom/zui/gallery/app/PhotoPage;)Lcom/zui/gallery/data/MediaItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/gallery/data/MediaItem;->getPath()Lcom/zui/gallery/data/Path;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/gallery/data/Path;->getSuffix()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    new-instance v3, Lcom/zui/gallery/app/-$$Lambda$PhotoPage$5$-YtsHRcX_aoVLukOzZMNrber0L4;

    invoke-direct {v3, p0}, Lcom/zui/gallery/app/-$$Lambda$PhotoPage$5$-YtsHRcX_aoVLukOzZMNrber0L4;-><init>(Lcom/zui/gallery/app/PhotoPage$5;)V

    new-instance v4, Lcom/zui/gallery/app/-$$Lambda$PhotoPage$5$BaOaXr1wvQpw7uEjFS3B9cRpkXo;

    invoke-direct {v4, p0}, Lcom/zui/gallery/app/-$$Lambda$PhotoPage$5$BaOaXr1wvQpw7uEjFS3B9cRpkXo;-><init>(Lcom/zui/gallery/app/PhotoPage$5;)V

    .line 1579
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/zui/gallery/cloud/CloudManager;->downloadOriginal(JLjava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method
