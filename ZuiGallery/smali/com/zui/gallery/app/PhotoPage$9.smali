.class Lcom/zui/gallery/app/PhotoPage$9;
.super Ljava/lang/Object;
.source "PhotoPage.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/app/PhotoPage;->createMoreDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/app/PhotoPage;

.field final synthetic val$mimeType:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/zui/gallery/app/PhotoPage;Ljava/lang/String;)V
    .locals 0

    .line 3613
    iput-object p1, p0, Lcom/zui/gallery/app/PhotoPage$9;->this$0:Lcom/zui/gallery/app/PhotoPage;

    iput-object p2, p0, Lcom/zui/gallery/app/PhotoPage$9;->val$mimeType:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private cloudPhotoOrVideoDownload()V
    .locals 5

    .line 3706
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage$9;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-static {v0}, Lcom/zui/gallery/app/PhotoPage;->access$700(Lcom/zui/gallery/app/PhotoPage;)Lcom/zui/gallery/data/MediaItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaItem;->getPath()Lcom/zui/gallery/data/Path;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/data/Path;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cloud/image"

    .line 3707
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, ""

    if-eqz v1, :cond_0

    .line 3708
    sget-object v1, Lcom/zui/gallery/util/AvatarUtils$Catagory;->PHOTODETAILPAGE:Lcom/zui/gallery/util/AvatarUtils$Catagory;

    sget-object v4, Lcom/zui/gallery/util/AvatarUtils$Action;->CLOUD_PHOTO_DOWNLOAD:Lcom/zui/gallery/util/AvatarUtils$Action;

    invoke-static {v1, v4, v3, v2}, Lcom/zui/gallery/util/AvatarUtils;->trackEvent(Lcom/zui/gallery/util/AvatarUtils$Catagory;Lcom/zui/gallery/util/AvatarUtils$Action;Ljava/lang/String;I)V

    :cond_0
    const-string v1, "cloud/video"

    .line 3710
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3711
    sget-object v0, Lcom/zui/gallery/util/AvatarUtils$Catagory;->VIDEODETAILPAGE:Lcom/zui/gallery/util/AvatarUtils$Catagory;

    sget-object v1, Lcom/zui/gallery/util/AvatarUtils$Action;->CLOUD_VIDEO_DOWNLOAD:Lcom/zui/gallery/util/AvatarUtils$Action;

    invoke-static {v0, v1, v3, v2}, Lcom/zui/gallery/util/AvatarUtils;->trackEvent(Lcom/zui/gallery/util/AvatarUtils$Catagory;Lcom/zui/gallery/util/AvatarUtils$Action;Ljava/lang/String;I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    .line 3622
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage$9;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-static {p1}, Lcom/zui/gallery/app/PhotoPage;->access$4300(Lcom/zui/gallery/app/PhotoPage;)Z

    move-result p1

    if-eqz p1, :cond_0

    add-int/lit8 p2, p2, 0x1

    :cond_0
    const-string p1, "privatekey"

    if-eqz p2, :cond_a

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p2, v1, :cond_5

    const/4 v1, 0x2

    if-eq p2, v1, :cond_2

    const/4 v1, 0x3

    if-eq p2, v1, :cond_1

    goto/16 :goto_1

    :cond_1
    const-string p2, "33333333"

    .line 3683
    invoke-static {p1, p2}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3684
    new-instance p1, Landroid/content/ComponentName;

    const-string p2, "com.zui.camera.plugin.dolphin"

    const-string v1, "com.zui.camera.dolphin.DolphinResultActivity"

    invoke-direct {p1, p2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3687
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    .line 3689
    invoke-virtual {p2, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 3690
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage$9;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-static {p1}, Lcom/zui/gallery/app/PhotoPage;->access$700(Lcom/zui/gallery/app/PhotoPage;)Lcom/zui/gallery/data/MediaItem;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/gallery/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object p1

    const-string v1, "path"

    invoke-virtual {p2, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3692
    :try_start_0
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage$9;->this$0:Lcom/zui/gallery/app/PhotoPage;

    iget-object p1, p1, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p1, p2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->startActivity(Landroid/content/Intent;)V

    .line 3694
    sget-object p1, Lcom/zui/gallery/util/AvatarUtils$Catagory;->PHOTODETAILPAGE:Lcom/zui/gallery/util/AvatarUtils$Catagory;

    sget-object p2, Lcom/zui/gallery/util/AvatarUtils$Action;->DOCUMENT_CORRECTION:Lcom/zui/gallery/util/AvatarUtils$Action;

    const-string v1, ""

    invoke-static {p1, p2, v1, v0}, Lcom/zui/gallery/util/AvatarUtils;->trackEvent(Lcom/zui/gallery/util/AvatarUtils$Catagory;Lcom/zui/gallery/util/AvatarUtils$Action;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception p1

    .line 3696
    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p2, p1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 3697
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    :cond_2
    const-string p2, "22222222"

    .line 3668
    invoke-static {p1, p2}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3669
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage$9;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-static {p1}, Lcom/zui/gallery/app/PhotoPage;->access$700(Lcom/zui/gallery/app/PhotoPage;)Lcom/zui/gallery/data/MediaItem;

    move-result-object p1

    instance-of p1, p1, Lcom/zui/gallery/data/CloudImage;

    if-eqz p1, :cond_3

    .line 3670
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage$9;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-static {p1}, Lcom/zui/gallery/app/PhotoPage;->access$4600(Lcom/zui/gallery/app/PhotoPage;)V

    goto/16 :goto_1

    .line 3672
    :cond_3
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage$9;->this$0:Lcom/zui/gallery/app/PhotoPage;

    iget-object p1, p1, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    iget-boolean p1, p1, Lcom/zui/gallery/app/AbstractGalleryActivity;->mIsSecureCameraCall:Z

    if-eqz p1, :cond_4

    .line 3673
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage$9;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-static {p1}, Lcom/zui/gallery/app/PhotoPage;->access$4800(Lcom/zui/gallery/app/PhotoPage;)V

    goto/16 :goto_1

    .line 3676
    :cond_4
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage$9;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-static {p1}, Lcom/zui/gallery/app/PhotoPage;->access$4400(Lcom/zui/gallery/app/PhotoPage;)V

    goto/16 :goto_1

    .line 3640
    :cond_5
    iget-object p2, p0, Lcom/zui/gallery/app/PhotoPage$9;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-static {p2}, Lcom/zui/gallery/app/PhotoPage;->access$700(Lcom/zui/gallery/app/PhotoPage;)Lcom/zui/gallery/data/MediaItem;

    move-result-object p2

    instance-of p2, p2, Lcom/zui/gallery/data/CloudImage;

    if-eqz p2, :cond_6

    .line 3641
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage$9;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-static {p1}, Lcom/zui/gallery/app/PhotoPage;->access$4600(Lcom/zui/gallery/app/PhotoPage;)V

    goto/16 :goto_1

    .line 3643
    :cond_6
    iget-object p2, p0, Lcom/zui/gallery/app/PhotoPage$9;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-static {p2}, Lcom/zui/gallery/app/PhotoPage;->access$700(Lcom/zui/gallery/app/PhotoPage;)Lcom/zui/gallery/data/MediaItem;

    move-result-object p2

    iget-boolean p2, p2, Lcom/zui/gallery/data/MediaItem;->isContinuousCover:Z

    if-eqz p2, :cond_7

    iget-object p2, p0, Lcom/zui/gallery/app/PhotoPage$9;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-static {p2}, Lcom/zui/gallery/app/PhotoPage;->access$700(Lcom/zui/gallery/app/PhotoPage;)Lcom/zui/gallery/data/MediaItem;

    move-result-object p2

    iget p2, p2, Lcom/zui/gallery/data/MediaItem;->continuousCount:I

    if-lez p2, :cond_7

    .line 3644
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage$9;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-static {p1}, Lcom/zui/gallery/app/PhotoPage;->access$4400(Lcom/zui/gallery/app/PhotoPage;)V

    goto/16 :goto_1

    :cond_7
    const-string p2, "add to private 1111"

    .line 3646
    invoke-static {p1, p2}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3647
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCurrentPhoto.mPath is "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/gallery/app/PhotoPage$9;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-static {v1}, Lcom/zui/gallery/app/PhotoPage;->access$700(Lcom/zui/gallery/app/PhotoPage;)Lcom/zui/gallery/data/MediaItem;

    move-result-object v1

    iget-object v1, v1, Lcom/zui/gallery/data/MediaItem;->mPath:Lcom/zui/gallery/data/Path;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " & mCurrentPhoto.filePath is "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/gallery/app/PhotoPage$9;->this$0:Lcom/zui/gallery/app/PhotoPage;

    .line 3648
    invoke-static {v1}, Lcom/zui/gallery/app/PhotoPage;->access$700(Lcom/zui/gallery/app/PhotoPage;)Lcom/zui/gallery/data/MediaItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/gallery/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 3647
    invoke-static {p1, p2}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3649
    iget-object p2, p0, Lcom/zui/gallery/app/PhotoPage$9;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-static {p2}, Lcom/zui/gallery/app/PhotoPage;->access$700(Lcom/zui/gallery/app/PhotoPage;)Lcom/zui/gallery/data/MediaItem;

    move-result-object p2

    invoke-virtual {p2}, Lcom/zui/gallery/data/MediaItem;->getSize()J

    move-result-wide v1

    const-wide/32 v3, 0x1f400000

    cmp-long p2, v1, v3

    if-lez p2, :cond_8

    .line 3650
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage$9;->this$0:Lcom/zui/gallery/app/PhotoPage;

    iget-object p1, p1, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    iget-object p2, p0, Lcom/zui/gallery/app/PhotoPage$9;->this$0:Lcom/zui/gallery/app/PhotoPage;

    iget-object p2, p2, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f100121

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 3653
    :cond_8
    invoke-static {}, Lcom/zui/gallery/privacygroup/KeyStoreUtil;->get()Lcom/zui/gallery/privacygroup/KeyStoreUtil;

    move-result-object p2

    invoke-virtual {p2}, Lcom/zui/gallery/privacygroup/KeyStoreUtil;->isPrivacyGroupExists()Z

    move-result p2

    if-eqz p2, :cond_9

    invoke-static {}, Lcom/zui/gallery/privacygroup/KeyStoreUtil;->get()Lcom/zui/gallery/privacygroup/KeyStoreUtil;

    move-result-object p2

    invoke-virtual {p2}, Lcom/zui/gallery/privacygroup/KeyStoreUtil;->isPrivacySpaceOff()Z

    move-result p2

    if-nez p2, :cond_9

    const-string/jumbo p2, "\u9690\u79c1\u76f8\u518c\u5df2\u5b58\u5728"

    .line 3654
    invoke-static {p1, p2}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3656
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage$9;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-static {p1}, Lcom/zui/gallery/app/PhotoPage;->access$700(Lcom/zui/gallery/app/PhotoPage;)Lcom/zui/gallery/data/MediaItem;

    move-result-object p2

    invoke-virtual {p2}, Lcom/zui/gallery/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/zui/gallery/app/PhotoPage;->access$4700(Lcom/zui/gallery/app/PhotoPage;Ljava/lang/String;)V

    goto :goto_1

    :cond_9
    const-string/jumbo p2, "\u8fd8\u672a\u521b\u5efa\u8fc7\u9690\u79c1\u76f8\u518c"

    .line 3659
    invoke-static {p1, p2}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3660
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string p2, "com.lenovo.privacyspace.verification"

    .line 3661
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3662
    iget-object p2, p0, Lcom/zui/gallery/app/PhotoPage$9;->this$0:Lcom/zui/gallery/app/PhotoPage;

    iget-object p2, p2, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f1001fe

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "android.app.extra.TITLE"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3663
    iget-object p2, p0, Lcom/zui/gallery/app/PhotoPage$9;->this$0:Lcom/zui/gallery/app/PhotoPage;

    iget-object p2, p2, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const/16 v0, 0x22b8

    invoke-virtual {p2, p1, v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    :cond_a
    const-string p2, "0000 set......."

    .line 3630
    invoke-static {p1, p2}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3631
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage$9;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-static {p1}, Lcom/zui/gallery/app/PhotoPage;->access$700(Lcom/zui/gallery/app/PhotoPage;)Lcom/zui/gallery/data/MediaItem;

    move-result-object p1

    instance-of p1, p1, Lcom/zui/gallery/data/CloudImage;

    if-nez p1, :cond_c

    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage$9;->this$0:Lcom/zui/gallery/app/PhotoPage;

    iget-object p1, p1, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    iget-boolean p1, p1, Lcom/zui/gallery/app/AbstractGalleryActivity;->mIsSecureCameraCall:Z

    if-nez p1, :cond_c

    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage$9;->val$mimeType:Ljava/lang/String;

    const-string p2, "image/gif"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    goto :goto_0

    .line 3635
    :cond_b
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage$9;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-virtual {p1}, Lcom/zui/gallery/app/PhotoPage;->lockScreem()V

    .line 3636
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage$9;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-static {p1}, Lcom/zui/gallery/app/PhotoPage;->access$4500(Lcom/zui/gallery/app/PhotoPage;)Z

    goto :goto_1

    .line 3632
    :cond_c
    :goto_0
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage$9;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-static {p1}, Lcom/zui/gallery/app/PhotoPage;->access$4400(Lcom/zui/gallery/app/PhotoPage;)V

    :goto_1
    return-void
.end method
