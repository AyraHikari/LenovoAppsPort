.class Lcom/zui/gallery/app/MicroVideoEditBaseActivity$TrimVideoTask;
.super Ljava/lang/Object;
.source "MicroVideoEditBaseActivity.java"

# interfaces
.implements Lcom/zui/gallery/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/app/MicroVideoEditBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TrimVideoTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/zui/gallery/util/ThreadPool$Job<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private saveVideo:Z

.field private successful:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic this$0:Lcom/zui/gallery/app/MicroVideoEditBaseActivity;

.field private trimResultPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/zui/gallery/app/MicroVideoEditBaseActivity;ZLjava/lang/String;)V
    .locals 0

    .line 647
    iput-object p1, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$TrimVideoTask;->this$0:Lcom/zui/gallery/app/MicroVideoEditBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 648
    iput-boolean p2, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$TrimVideoTask;->saveVideo:Z

    .line 649
    iput-object p3, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$TrimVideoTask;->trimResultPath:Ljava/lang/String;

    .line 650
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$TrimVideoTask;->successful:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public run(Lcom/zui/gallery/util/ThreadPool$JobContext;)Ljava/lang/Boolean;
    .locals 21

    move-object/from16 v1, p0

    .line 655
    iget-object v0, v1, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$TrimVideoTask;->this$0:Lcom/zui/gallery/app/MicroVideoEditBaseActivity;

    iget-object v0, v0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->mSrcVideoPath:Ljava/lang/String;

    .line 656
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TrimVideoTask run saveVideo ="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v1, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$TrimVideoTask;->saveVideo:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MicroVideo"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    .line 663
    :try_start_0
    new-instance v10, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v10}, Landroid/media/MediaMetadataRetriever;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    const/4 v11, 0x0

    .line 667
    :try_start_1
    new-instance v12, Ljava/io/FileInputStream;

    iget-object v0, v1, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$TrimVideoTask;->this$0:Lcom/zui/gallery/app/MicroVideoEditBaseActivity;

    iget-object v0, v0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->mSrcVideoPath:Ljava/lang/String;

    invoke-direct {v12, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 668
    :try_start_2
    invoke-virtual {v12}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v5

    .line 669
    iget-object v0, v1, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$TrimVideoTask;->this$0:Lcom/zui/gallery/app/MicroVideoEditBaseActivity;

    iget-wide v6, v0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->offset:J

    iget-object v0, v1, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$TrimVideoTask;->this$0:Lcom/zui/gallery/app/MicroVideoEditBaseActivity;

    iget-wide v8, v0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->length:J

    move-object v4, v10

    invoke-virtual/range {v4 .. v9}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 670
    iget-boolean v0, v1, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$TrimVideoTask;->saveVideo:Z

    if-nez v0, :cond_0

    .line 671
    iget-object v0, v1, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$TrimVideoTask;->this$0:Lcom/zui/gallery/app/MicroVideoEditBaseActivity;

    iget-wide v4, v0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->mCurrentPosition:J

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    const/4 v0, 0x3

    invoke-virtual {v10, v4, v5, v0}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(JI)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 672
    iget-object v4, v1, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$TrimVideoTask;->trimResultPath:Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/zui/gallery/common/BitmapUtils;->bitmapTo_JPG(Landroid/graphics/Bitmap;Ljava/lang/String;)Z

    .line 673
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TrimVideoTask mCurrentPosition ="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$TrimVideoTask;->this$0:Lcom/zui/gallery/app/MicroVideoEditBaseActivity;

    iget-wide v4, v4, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->mCurrentPosition:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 675
    :cond_0
    iget-object v0, v1, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$TrimVideoTask;->this$0:Lcom/zui/gallery/app/MicroVideoEditBaseActivity;

    iget-object v13, v0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->mSrcVideoPath:Ljava/lang/String;

    iget-object v0, v1, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$TrimVideoTask;->this$0:Lcom/zui/gallery/app/MicroVideoEditBaseActivity;

    iget-wide v14, v0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->offset:J

    iget-object v0, v1, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$TrimVideoTask;->this$0:Lcom/zui/gallery/app/MicroVideoEditBaseActivity;

    iget-wide v4, v0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->length:J

    iget-object v0, v1, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$TrimVideoTask;->trimResultPath:Ljava/lang/String;

    const/16 v19, 0x1

    const/16 v20, 0x1

    move-wide/from16 v16, v4

    move-object/from16 v18, v0

    invoke-static/range {v13 .. v20}, Lcom/zui/gallery/common/BitmapUtils;->saveAsVideo(Ljava/lang/String;JJLjava/lang/String;ZZ)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 683
    :goto_0
    :try_start_3
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 688
    :catch_0
    :try_start_4
    invoke-virtual {v10}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 691
    invoke-interface/range {p1 .. p1}, Lcom/zui/gallery/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 692
    iget-object v0, v1, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$TrimVideoTask;->this$0:Lcom/zui/gallery/app/MicroVideoEditBaseActivity;

    new-instance v4, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$TrimVideoTask$1;

    invoke-direct {v4, v1}, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$TrimVideoTask$1;-><init>(Lcom/zui/gallery/app/MicroVideoEditBaseActivity$TrimVideoTask;)V

    invoke-virtual {v0, v4}, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 705
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 710
    :cond_1
    iget-object v0, v1, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$TrimVideoTask;->this$0:Lcom/zui/gallery/app/MicroVideoEditBaseActivity;

    invoke-static {v0}, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->access$200(Lcom/zui/gallery/app/MicroVideoEditBaseActivity;)Landroid/content/Context;

    move-result-object v0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    iget-object v5, v1, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$TrimVideoTask;->trimResultPath:Ljava/lang/String;

    aput-object v5, v4, v3

    iget-object v5, v1, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$TrimVideoTask;->this$0:Lcom/zui/gallery/app/MicroVideoEditBaseActivity;

    .line 712
    invoke-static {v5}, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->access$300(Lcom/zui/gallery/app/MicroVideoEditBaseActivity;)Landroid/media/MediaScannerConnection$OnScanCompletedListener;

    move-result-object v5

    .line 710
    invoke-static {v0, v4, v11, v5}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    const-string/jumbo v0, "trim finished "

    .line 713
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v12, v11

    .line 678
    :goto_1
    :try_start_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ExtractFrameLoader error :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v12, :cond_2

    .line 683
    :try_start_6
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 688
    :catch_3
    :cond_2
    :try_start_7
    invoke-virtual {v10}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    return-object v11

    :catchall_1
    move-exception v0

    move-object v11, v12

    :goto_2
    if-eqz v11, :cond_3

    .line 683
    :try_start_8
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    .line 688
    :catch_4
    :cond_3
    :try_start_9
    invoke-virtual {v10}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 690
    throw v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    :catch_5
    move-exception v0

    const-string/jumbo v4, "trim video exception "

    .line 715
    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 716
    iget-object v0, v1, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$TrimVideoTask;->successful:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 718
    :goto_3
    iget-object v0, v1, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$TrimVideoTask;->successful:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_4

    .line 719
    iget-object v0, v1, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$TrimVideoTask;->this$0:Lcom/zui/gallery/app/MicroVideoEditBaseActivity;

    new-instance v2, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$TrimVideoTask$2;

    invoke-direct {v2, v1}, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$TrimVideoTask$2;-><init>(Lcom/zui/gallery/app/MicroVideoEditBaseActivity$TrimVideoTask;)V

    invoke-virtual {v0, v2}, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 737
    :cond_4
    iget-object v0, v1, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$TrimVideoTask;->successful:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic run(Lcom/zui/gallery/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 0

    .line 642
    invoke-virtual {p0, p1}, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$TrimVideoTask;->run(Lcom/zui/gallery/util/ThreadPool$JobContext;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
