.class Lcom/zui/gallery/app/MicroVideoEditBaseActivity$4$1;
.super Ljava/lang/Object;
.source "MicroVideoEditBaseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/app/MicroVideoEditBaseActivity$4;->onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zui/gallery/app/MicroVideoEditBaseActivity$4;

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/zui/gallery/app/MicroVideoEditBaseActivity$4;Landroid/net/Uri;)V
    .locals 0

    .line 745
    iput-object p1, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$4$1;->this$1:Lcom/zui/gallery/app/MicroVideoEditBaseActivity$4;

    iput-object p2, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$4$1;->val$uri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const-string v0, "MicroVideo"

    const/4 v1, 0x0

    .line 751
    :try_start_0
    iget-object v2, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$4$1;->val$uri:Landroid/net/Uri;

    if-eqz v2, :cond_1

    .line 752
    iget-object v2, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$4$1;->this$1:Lcom/zui/gallery/app/MicroVideoEditBaseActivity$4;

    iget-object v2, v2, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$4;->this$0:Lcom/zui/gallery/app/MicroVideoEditBaseActivity;

    invoke-virtual {v2}, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$4$1;->val$uri:Landroid/net/Uri;

    const-string v2, "_data"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 755
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    .line 756
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 763
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "query uri "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$4$1;->val$uri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " is null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    if-eqz v1, :cond_3

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_2

    .line 771
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 773
    :cond_2
    throw v0

    :catch_0
    if-eqz v1, :cond_3

    .line 771
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 774
    :cond_3
    iget-object v1, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$4$1;->this$1:Lcom/zui/gallery/app/MicroVideoEditBaseActivity$4;

    iget-object v1, v1, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$4;->this$0:Lcom/zui/gallery/app/MicroVideoEditBaseActivity;

    .line 775
    iget-object v2, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$4$1;->this$1:Lcom/zui/gallery/app/MicroVideoEditBaseActivity$4;

    iget-object v2, v2, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$4;->this$0:Lcom/zui/gallery/app/MicroVideoEditBaseActivity;

    invoke-static {v2}, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->access$400(Lcom/zui/gallery/app/MicroVideoEditBaseActivity;)Z

    move-result v2

    if-eqz v2, :cond_4

    const v2, 0x7f10022e

    goto :goto_2

    :cond_4
    const v2, 0x7f10022b

    :goto_2
    const/4 v3, 0x1

    .line 774
    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 776
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 777
    iget-object v1, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$4$1;->this$1:Lcom/zui/gallery/app/MicroVideoEditBaseActivity$4;

    iget-object v1, v1, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$4;->this$0:Lcom/zui/gallery/app/MicroVideoEditBaseActivity;

    invoke-static {v1}, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->access$100(Lcom/zui/gallery/app/MicroVideoEditBaseActivity;)Lzui/app/ProgressDialogX;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 778
    iget-object v1, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$4$1;->this$1:Lcom/zui/gallery/app/MicroVideoEditBaseActivity$4;

    iget-object v1, v1, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$4;->this$0:Lcom/zui/gallery/app/MicroVideoEditBaseActivity;

    invoke-static {v1}, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->access$100(Lcom/zui/gallery/app/MicroVideoEditBaseActivity;)Lzui/app/ProgressDialogX;

    move-result-object v1

    invoke-virtual {v1}, Lzui/app/ProgressDialogX;->dismiss()V

    .line 780
    :cond_5
    iget-object v1, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$4$1;->this$1:Lcom/zui/gallery/app/MicroVideoEditBaseActivity$4;

    iget-object v1, v1, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$4;->this$0:Lcom/zui/gallery/app/MicroVideoEditBaseActivity;

    iget-boolean v1, v1, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->mSecureCameraCall:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$4$1;->val$uri:Landroid/net/Uri;

    if-eqz v1, :cond_6

    .line 781
    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    .line 783
    :try_start_1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 784
    iget-object v2, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$4$1;->this$1:Lcom/zui/gallery/app/MicroVideoEditBaseActivity$4;

    iget-object v2, v2, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$4;->this$0:Lcom/zui/gallery/app/MicroVideoEditBaseActivity;

    iget-object v2, v2, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->mApp:Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {v2}, Lcom/zui/gallery/app/GalleryApp;->getDataManager()Lcom/zui/gallery/data/DataManager;

    move-result-object v2

    const/16 v4, 0xb

    .line 785
    invoke-virtual {v2, v4}, Lcom/zui/gallery/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v2

    .line 784
    invoke-static {v2}, Lcom/zui/gallery/data/Path;->fromString(Ljava/lang/String;)Lcom/zui/gallery/data/Path;

    move-result-object v2

    .line 786
    sget v4, Lcom/zui/gallery/util/MediaSetUtils;->CAMERA_BUCKET_ID:I

    invoke-virtual {v2, v4}, Lcom/zui/gallery/data/Path;->getChild(I)Lcom/zui/gallery/data/Path;

    move-result-object v2

    .line 787
    iget-object v4, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$4$1;->this$1:Lcom/zui/gallery/app/MicroVideoEditBaseActivity$4;

    iget-object v4, v4, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$4;->this$0:Lcom/zui/gallery/app/MicroVideoEditBaseActivity;

    iget-object v4, v4, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->mApp:Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {v4}, Lcom/zui/gallery/app/GalleryApp;->getDataManager()Lcom/zui/gallery/data/DataManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/zui/gallery/data/DataManager;->getMediaSet(Lcom/zui/gallery/data/Path;)Lcom/zui/gallery/data/MediaSet;

    move-result-object v2

    check-cast v2, Lcom/zui/gallery/data/SecureAlbum;

    if-eqz v2, :cond_6

    .line 789
    invoke-virtual {v2, v3, v1}, Lcom/zui/gallery/data/SecureAlbum;->addMediaItem(ZI)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v1

    const-string v2, "add trim video to secureAlbum exception "

    .line 792
    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 795
    :cond_6
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "uri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$4$1;->val$uri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    iget-object v0, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$4$1;->this$1:Lcom/zui/gallery/app/MicroVideoEditBaseActivity$4;

    iget-object v0, v0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$4;->this$0:Lcom/zui/gallery/app/MicroVideoEditBaseActivity;

    const/4 v1, -0x1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    iget-object v3, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$4$1;->val$uri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->setResult(ILandroid/content/Intent;)V

    .line 797
    iget-object v0, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$4$1;->this$1:Lcom/zui/gallery/app/MicroVideoEditBaseActivity$4;

    iget-object v0, v0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$4;->this$0:Lcom/zui/gallery/app/MicroVideoEditBaseActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->finish()V

    .line 799
    iget-object v0, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$4$1;->this$1:Lcom/zui/gallery/app/MicroVideoEditBaseActivity$4;

    iget-object v0, v0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$4;->this$0:Lcom/zui/gallery/app/MicroVideoEditBaseActivity;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->setRequestedOrientation(I)V

    return-void
.end method
