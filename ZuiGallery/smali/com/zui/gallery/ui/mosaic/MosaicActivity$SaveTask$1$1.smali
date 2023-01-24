.class Lcom/zui/gallery/ui/mosaic/MosaicActivity$SaveTask$1$1;
.super Ljava/lang/Object;
.source "MosaicActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/ui/mosaic/MosaicActivity$SaveTask$1;->onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/zui/gallery/ui/mosaic/MosaicActivity$SaveTask$1;

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/zui/gallery/ui/mosaic/MosaicActivity$SaveTask$1;Landroid/net/Uri;)V
    .locals 0

    .line 711
    iput-object p1, p0, Lcom/zui/gallery/ui/mosaic/MosaicActivity$SaveTask$1$1;->this$2:Lcom/zui/gallery/ui/mosaic/MosaicActivity$SaveTask$1;

    iput-object p2, p0, Lcom/zui/gallery/ui/mosaic/MosaicActivity$SaveTask$1$1;->val$uri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 717
    :try_start_0
    iget-object v0, p0, Lcom/zui/gallery/ui/mosaic/MosaicActivity$SaveTask$1$1;->this$2:Lcom/zui/gallery/ui/mosaic/MosaicActivity$SaveTask$1;

    iget-object v0, v0, Lcom/zui/gallery/ui/mosaic/MosaicActivity$SaveTask$1;->this$1:Lcom/zui/gallery/ui/mosaic/MosaicActivity$SaveTask;

    iget-object v0, v0, Lcom/zui/gallery/ui/mosaic/MosaicActivity$SaveTask;->this$0:Lcom/zui/gallery/ui/mosaic/MosaicActivity;

    invoke-static {v0}, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->access$1100(Lcom/zui/gallery/ui/mosaic/MosaicActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/gallery/ui/mosaic/MosaicActivity$SaveTask$1$1;->val$uri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 718
    iget-object v0, p0, Lcom/zui/gallery/ui/mosaic/MosaicActivity$SaveTask$1$1;->val$uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 720
    :try_start_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "MosaicActivity"

    const-string v2, "add mosaic to secureAlbum exception "

    .line 723
    invoke-static {v1, v2, v0}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 727
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/zui/gallery/ui/mosaic/MosaicActivity$SaveTask$1$1;->this$2:Lcom/zui/gallery/ui/mosaic/MosaicActivity$SaveTask$1;

    iget-object v0, v0, Lcom/zui/gallery/ui/mosaic/MosaicActivity$SaveTask$1;->this$1:Lcom/zui/gallery/ui/mosaic/MosaicActivity$SaveTask;

    iget-object v0, v0, Lcom/zui/gallery/ui/mosaic/MosaicActivity$SaveTask;->this$0:Lcom/zui/gallery/ui/mosaic/MosaicActivity;

    const/4 v1, -0x1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    iget-object v3, p0, Lcom/zui/gallery/ui/mosaic/MosaicActivity$SaveTask$1$1;->val$uri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->setResult(ILandroid/content/Intent;)V

    .line 728
    iget-object v0, p0, Lcom/zui/gallery/ui/mosaic/MosaicActivity$SaveTask$1$1;->this$2:Lcom/zui/gallery/ui/mosaic/MosaicActivity$SaveTask$1;

    iget-object v0, v0, Lcom/zui/gallery/ui/mosaic/MosaicActivity$SaveTask$1;->this$1:Lcom/zui/gallery/ui/mosaic/MosaicActivity$SaveTask;

    iget-object v0, v0, Lcom/zui/gallery/ui/mosaic/MosaicActivity$SaveTask;->this$0:Lcom/zui/gallery/ui/mosaic/MosaicActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->stopLoadingIndicator()V

    .line 729
    iget-object v0, p0, Lcom/zui/gallery/ui/mosaic/MosaicActivity$SaveTask$1$1;->this$2:Lcom/zui/gallery/ui/mosaic/MosaicActivity$SaveTask$1;

    iget-object v0, v0, Lcom/zui/gallery/ui/mosaic/MosaicActivity$SaveTask$1;->this$1:Lcom/zui/gallery/ui/mosaic/MosaicActivity$SaveTask;

    iget-object v0, v0, Lcom/zui/gallery/ui/mosaic/MosaicActivity$SaveTask;->this$0:Lcom/zui/gallery/ui/mosaic/MosaicActivity;

    new-instance v1, Lcom/zui/gallery/ui/mosaic/MosaicActivity$SaveTask$1$1$1;

    invoke-direct {v1, p0}, Lcom/zui/gallery/ui/mosaic/MosaicActivity$SaveTask$1$1$1;-><init>(Lcom/zui/gallery/ui/mosaic/MosaicActivity$SaveTask$1$1;)V

    invoke-virtual {v0, v1}, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    .line 737
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 739
    :goto_1
    iget-object v0, p0, Lcom/zui/gallery/ui/mosaic/MosaicActivity$SaveTask$1$1;->this$2:Lcom/zui/gallery/ui/mosaic/MosaicActivity$SaveTask$1;

    iget-object v0, v0, Lcom/zui/gallery/ui/mosaic/MosaicActivity$SaveTask$1;->this$1:Lcom/zui/gallery/ui/mosaic/MosaicActivity$SaveTask;

    iget-object v0, v0, Lcom/zui/gallery/ui/mosaic/MosaicActivity$SaveTask;->this$0:Lcom/zui/gallery/ui/mosaic/MosaicActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->finish()V

    return-void

    :goto_2
    iget-object v1, p0, Lcom/zui/gallery/ui/mosaic/MosaicActivity$SaveTask$1$1;->this$2:Lcom/zui/gallery/ui/mosaic/MosaicActivity$SaveTask$1;

    iget-object v1, v1, Lcom/zui/gallery/ui/mosaic/MosaicActivity$SaveTask$1;->this$1:Lcom/zui/gallery/ui/mosaic/MosaicActivity$SaveTask;

    iget-object v1, v1, Lcom/zui/gallery/ui/mosaic/MosaicActivity$SaveTask;->this$0:Lcom/zui/gallery/ui/mosaic/MosaicActivity;

    invoke-virtual {v1}, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->finish()V

    .line 740
    throw v0
.end method
