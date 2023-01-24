.class public Lcom/zui/gallery/app/Best4KVideoSelectActivity;
.super Lcom/zui/gallery/app/VideoEditBaseActivity;
.source "Best4KVideoSelectActivity.java"

# interfaces
.implements Lcom/zui/gallery/app/ExtractFrameProcesser$ExtractListener;
.implements Lcom/zui/gallery/ui/videoedit/OperationBar$seekBarListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/app/Best4KVideoSelectActivity$SavePictureTask;,
        Lcom/zui/gallery/app/Best4KVideoSelectActivity$ExtractFrameLoader;
    }
.end annotation


# instance fields
.field private final PLAY_SAVE_ANIMATION:I

.field private final UPDATE_SAVE_PIC_BUT:I

.field private animHandler:Landroid/os/Handler;

.field private bestFrames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private clickListener:Landroid/view/View$OnClickListener;

.field private extractFrameProcesser:Lcom/zui/gallery/app/ExtractFrameProcesser;

.field private extractTask:Lcom/zui/gallery/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/zui/gallery/util/Future<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private hasMoved:Z

.field private volatile isExtractFrameDone:Z

.field private volatile isSaveBestFrameDone:Z

.field private mLastSavedBitmap:Landroid/graphics/Bitmap;

.field private mNewPicUri:Landroid/net/Uri;

.field private final mProgressChecker:Ljava/lang/Runnable;

.field private mSavePicBtn:Landroid/widget/LinearLayout;

.field private mSavePictureTask:Lcom/zui/gallery/app/Best4KVideoSelectActivity$SavePictureTask;

.field private mVideoPlayer:Landroid/widget/VideoView;

.field private volatile needDeleteCacheFile:Z

.field private p:Landroid/graphics/Paint;

.field private times:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 88
    invoke-direct {p0}, Lcom/zui/gallery/app/VideoEditBaseActivity;-><init>()V

    const/4 v0, 0x1

    .line 101
    iput-boolean v0, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->isSaveBestFrameDone:Z

    const/4 v1, 0x0

    .line 103
    iput-boolean v1, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->hasMoved:Z

    .line 105
    iput v0, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->PLAY_SAVE_ANIMATION:I

    const/4 v0, 0x2

    .line 106
    iput v0, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->UPDATE_SAVE_PIC_BUT:I

    .line 109
    new-instance v0, Lcom/zui/gallery/app/Best4KVideoSelectActivity$1;

    invoke-direct {v0, p0}, Lcom/zui/gallery/app/Best4KVideoSelectActivity$1;-><init>(Lcom/zui/gallery/app/Best4KVideoSelectActivity;)V

    iput-object v0, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->animHandler:Landroid/os/Handler;

    .line 435
    new-instance v0, Lcom/zui/gallery/app/Best4KVideoSelectActivity$4;

    invoke-direct {v0, p0}, Lcom/zui/gallery/app/Best4KVideoSelectActivity$4;-><init>(Lcom/zui/gallery/app/Best4KVideoSelectActivity;)V

    iput-object v0, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->clickListener:Landroid/view/View$OnClickListener;

    .line 486
    new-instance v0, Lcom/zui/gallery/app/Best4KVideoSelectActivity$5;

    invoke-direct {v0, p0}, Lcom/zui/gallery/app/Best4KVideoSelectActivity$5;-><init>(Lcom/zui/gallery/app/Best4KVideoSelectActivity;)V

    iput-object v0, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->mProgressChecker:Ljava/lang/Runnable;

    return-void
.end method

.method private BSearch(I)Landroid/graphics/Bitmap;
    .locals 6

    .line 537
    iget-object v0, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->times:Ljava/util/List;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->bestFrames:Ljava/util/Map;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 543
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->times:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    move v2, v1

    :cond_1
    if-gt v1, v0, :cond_6

    add-int v2, v1, v0

    .line 545
    div-int/lit8 v2, v2, 0x2

    .line 546
    iget-object v3, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->times:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, p1, :cond_2

    .line 548
    iget-object v0, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->bestFrames:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    return-object p1

    :cond_2
    if-ge p1, v3, :cond_4

    add-int/lit8 v0, v2, -0x1

    add-int/lit8 v3, v0, -0x1

    if-ltz v3, :cond_1

    .line 553
    iget-object v4, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->times:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 554
    iget-object v5, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->times:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lt p1, v3, :cond_1

    if-gt p1, v4, :cond_1

    sub-int v0, p1, v3

    sub-int p1, v4, p1

    if-gt v0, p1, :cond_3

    move v4, v3

    .line 557
    :cond_3
    iget-object p1, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->bestFrames:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    return-object p1

    :cond_4
    add-int/lit8 v1, v2, 0x1

    add-int/lit8 v3, v1, 0x1

    .line 563
    iget-object v4, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->times:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-gt v3, v4, :cond_1

    .line 564
    iget-object v4, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->times:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 565
    iget-object v4, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->times:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lt p1, v4, :cond_1

    if-gt p1, v3, :cond_1

    sub-int v0, p1, v4

    sub-int p1, v3, p1

    if-gt v0, p1, :cond_5

    move v3, v4

    .line 568
    :cond_5
    iget-object p1, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->bestFrames:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    return-object p1

    .line 573
    :cond_6
    iget-object p1, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->bestFrames:Ljava/util/Map;

    iget-object v0, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->times:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    return-object p1

    :cond_7
    :goto_0
    const-string p1, "VideoEditActivity"

    const-string v0, "bestFrame not yet complete"

    .line 538
    invoke-static {p1, v0}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method static synthetic access$000(Lcom/zui/gallery/app/Best4KVideoSelectActivity;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 88
    invoke-direct {p0, p1}, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->playSaveBestFrameAnim(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$100(Lcom/zui/gallery/app/Best4KVideoSelectActivity;Z)V
    .locals 0

    .line 88
    invoke-direct {p0, p1}, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->enableSavePicBtn(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/zui/gallery/app/Best4KVideoSelectActivity;)Landroid/widget/LinearLayout;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->mSavePicBtn:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/zui/gallery/app/Best4KVideoSelectActivity;I)Landroid/graphics/Bitmap;
    .locals 0

    .line 88
    invoke-direct {p0, p1}, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->generatBorderBitmap(I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1200(Lcom/zui/gallery/app/Best4KVideoSelectActivity;)Landroid/os/Handler;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->animHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/zui/gallery/app/Best4KVideoSelectActivity;J)Z
    .locals 0

    .line 88
    invoke-direct {p0, p1, p2}, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->saveBestFrame2File(J)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/zui/gallery/app/Best4KVideoSelectActivity;)Landroid/widget/VideoView;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->mVideoPlayer:Landroid/widget/VideoView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/zui/gallery/app/Best4KVideoSelectActivity;)Z
    .locals 0

    .line 88
    iget-boolean p0, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->isExtractFrameDone:Z

    return p0
.end method

.method static synthetic access$400(Lcom/zui/gallery/app/Best4KVideoSelectActivity;)Z
    .locals 0

    .line 88
    iget-boolean p0, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->isSaveBestFrameDone:Z

    return p0
.end method

.method static synthetic access$402(Lcom/zui/gallery/app/Best4KVideoSelectActivity;Z)Z
    .locals 0

    .line 88
    iput-boolean p1, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->isSaveBestFrameDone:Z

    return p1
.end method

.method static synthetic access$500(Lcom/zui/gallery/app/Best4KVideoSelectActivity;)V
    .locals 0

    .line 88
    invoke-direct {p0}, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->savePicture()V

    return-void
.end method

.method static synthetic access$600(Lcom/zui/gallery/app/Best4KVideoSelectActivity;)I
    .locals 0

    .line 88
    invoke-direct {p0}, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->setProgress()I

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lcom/zui/gallery/app/Best4KVideoSelectActivity;)Ljava/lang/Runnable;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->mProgressChecker:Ljava/lang/Runnable;

    return-object p0
.end method

.method private copyCacheFile4NewVideo(Ljava/lang/String;)V
    .locals 9

    .line 337
    iget-wide v0, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->mTrimStartTime:J

    long-to-int v0, v0

    mul-int/lit16 v0, v0, 0x3e8

    .line 338
    iget-wide v1, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->mTrimEndTime:J

    long-to-int v1, v1

    mul-int/lit16 v1, v1, 0x3e8

    .line 339
    iget-object v2, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->extractFrameProcesser:Lcom/zui/gallery/app/ExtractFrameProcesser;

    invoke-virtual {v2}, Lcom/zui/gallery/app/ExtractFrameProcesser;->getCacheRootDir()Ljava/io/File;

    move-result-object v2

    .line 340
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 341
    iget-object v3, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->extractFrameProcesser:Lcom/zui/gallery/app/ExtractFrameProcesser;

    invoke-virtual {v3}, Lcom/zui/gallery/app/ExtractFrameProcesser;->getCurrentVideoCacheDir()Ljava/io/File;

    move-result-object v3

    .line 342
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 344
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 345
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v4, "."

    .line 346
    invoke-virtual {p1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_2

    const/4 v5, 0x0

    .line 348
    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 349
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 350
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    .line 351
    invoke-virtual {v4}, Ljava/io/File;->mkdir()Z

    .line 353
    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 354
    iget-object p1, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->times:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lt v2, v0, :cond_1

    if-gt v2, v1, :cond_1

    .line 356
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v3, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 357
    new-instance v6, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sub-int/2addr v2, v0

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, v4, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 359
    invoke-direct {p0, v5, v6}, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->copyFile(Ljava/io/File;Ljava/io/File;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private copyFile(Ljava/io/File;Ljava/io/File;)V
    .locals 6

    const-string v0, "VideoEditActivity"

    if-eqz p1, :cond_6

    .line 369
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_5

    :cond_0
    const/high16 v1, 0x80000

    new-array v1, v1, [B

    const/4 v2, 0x0

    .line 378
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 379
    :try_start_1
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 380
    :goto_0
    :try_start_2
    invoke-virtual {v3, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    const/4 v5, -0x1

    if-eq v2, v5, :cond_1

    const/4 v5, 0x0

    .line 381
    invoke-virtual {v4, v1, v5, v2}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 383
    :cond_1
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    .line 384
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "copy cache file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " to "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " successful"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 390
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 396
    :catch_0
    :goto_1
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    goto :goto_3

    :catchall_0
    move-exception p1

    move-object v2, v4

    goto :goto_4

    :catch_1
    move-exception p1

    move-object v2, v4

    goto :goto_2

    :catchall_1
    move-exception p1

    goto :goto_4

    :catch_2
    move-exception p1

    goto :goto_2

    :catchall_2
    move-exception p1

    move-object v3, v2

    goto :goto_4

    :catch_3
    move-exception p1

    move-object v3, v2

    :goto_2
    :try_start_5
    const-string p2, "copy cache file 4 new video cache exeception "

    .line 386
    invoke-static {v0, p2, p1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v2, :cond_2

    .line 390
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    :catch_4
    :cond_2
    if-eqz v3, :cond_3

    goto :goto_1

    :catch_5
    :cond_3
    :goto_3
    return-void

    :goto_4
    if-eqz v2, :cond_4

    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    :catch_6
    :cond_4
    if-eqz v3, :cond_5

    .line 396
    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    .line 400
    :catch_7
    :cond_5
    throw p1

    :cond_6
    :goto_5
    const-string p1, "copy cache file invalid"

    .line 370
    invoke-static {v0, p1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private deleteCacheFolder()V
    .locals 3

    .line 404
    iget-object v0, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->extractFrameProcesser:Lcom/zui/gallery/app/ExtractFrameProcesser;

    invoke-virtual {v0}, Lcom/zui/gallery/app/ExtractFrameProcesser;->getCacheRootDir()Ljava/io/File;

    move-result-object v0

    .line 405
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 406
    iget-object v0, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->extractFrameProcesser:Lcom/zui/gallery/app/ExtractFrameProcesser;

    invoke-virtual {v0}, Lcom/zui/gallery/app/ExtractFrameProcesser;->getCurrentVideoCacheDir()Ljava/io/File;

    move-result-object v0

    .line 407
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 408
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 409
    array-length v1, v0

    if-lez v1, :cond_0

    .line 410
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/zui/gallery/app/Best4KVideoSelectActivity$3;

    invoke-direct {v2, p0, v0}, Lcom/zui/gallery/app/Best4KVideoSelectActivity$3;-><init>(Lcom/zui/gallery/app/Best4KVideoSelectActivity;[Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 429
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method private enableSavePicBtn(Z)V
    .locals 1

    .line 449
    iget-object v0, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->mSavePicBtn:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 450
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method private generatBorderBitmap(I)Landroid/graphics/Bitmap;
    .locals 7

    .line 809
    invoke-direct {p0, p1}, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->BSearch(I)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 810
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "VideoEditActivity"

    const-string v1, "best select frame is null "

    .line 811
    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 815
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 816
    invoke-virtual {v1, p1, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    const/4 v2, 0x0

    .line 817
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    int-to-float v5, p1

    iget-object v6, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->p:Landroid/graphics/Paint;

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-object v0
.end method

.method private getFrameBitmapByTime(J)Landroid/graphics/Bitmap;
    .locals 2

    .line 931
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 932
    iget-object v1, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->mSrcVideoPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    const/4 v1, 0x2

    .line 934
    invoke-virtual {v0, p1, p2, v1}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(JI)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 935
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V

    return-object p1
.end method

.method private getTimeKey(I)I
    .locals 6

    .line 495
    iget-object v0, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->times:Ljava/util/List;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->bestFrames:Ljava/util/Map;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 501
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->times:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    move v2, v1

    :cond_1
    if-gt v1, v0, :cond_6

    add-int v2, v1, v0

    .line 503
    div-int/lit8 v2, v2, 0x2

    .line 504
    iget-object v3, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->times:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, p1, :cond_2

    return p1

    :cond_2
    if-ge p1, v3, :cond_4

    add-int/lit8 v0, v2, -0x1

    add-int/lit8 v3, v0, -0x1

    if-ltz v3, :cond_1

    .line 511
    iget-object v4, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->times:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 512
    iget-object v5, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->times:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lt p1, v3, :cond_1

    if-gt p1, v4, :cond_1

    sub-int v0, p1, v3

    sub-int p1, v4, p1

    if-gt v0, p1, :cond_3

    move v4, v3

    :cond_3
    return v4

    :cond_4
    add-int/lit8 v1, v2, 0x1

    add-int/lit8 v3, v1, 0x1

    .line 522
    iget-object v4, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->times:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-gt v3, v4, :cond_1

    .line 523
    iget-object v4, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->times:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 524
    iget-object v4, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->times:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lt p1, v4, :cond_1

    if-gt p1, v3, :cond_1

    sub-int v0, p1, v4

    sub-int p1, v3, p1

    if-gt v0, p1, :cond_5

    move v3, v4

    :cond_5
    return v3

    .line 533
    :cond_6
    iget-object p1, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->times:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_7
    :goto_0
    const-string p1, "VideoEditActivity"

    const-string v0, "bestFrame not yet complete"

    .line 496
    invoke-static {p1, v0}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x1

    return p1
.end method

.method private initPaint()V
    .locals 3

    .line 754
    iget-object v0, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->p:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    return-void

    .line 756
    :cond_0
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->p:Landroid/graphics/Paint;

    .line 757
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 758
    iget-object v0, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->p:Landroid/graphics/Paint;

    const/high16 v1, 0x40800000    # 4.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 759
    iget-object v0, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->p:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050220

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private initPreviewPicSize()V
    .locals 3

    .line 170
    invoke-virtual {p0}, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0600f7

    .line 171
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v2, 0x7f0600f6

    .line 172
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 173
    iget-object v2, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->mPicPreviewFront:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 174
    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 175
    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 176
    iget-object v2, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->mPicPreviewBack:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 177
    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 178
    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    return-void
.end method

.method private playSaveBestFrameAnim(Landroid/graphics/Bitmap;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 718
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 720
    iget-object v0, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->mPicPreviewFront:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 721
    iget-object v0, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->mLastSavedBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 722
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 724
    :cond_0
    iput-object p1, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->mLastSavedBitmap:Landroid/graphics/Bitmap;

    const p1, 0x7f010042

    .line 727
    invoke-static {p0, p1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    .line 728
    new-instance v0, Lcom/zui/gallery/app/Best4KVideoSelectActivity$8;

    invoke-direct {v0, p0}, Lcom/zui/gallery/app/Best4KVideoSelectActivity$8;-><init>(Lcom/zui/gallery/app/Best4KVideoSelectActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 745
    iget-object v0, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->mPicPreviewContainer:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 746
    iget-object v0, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->mPicPreviewFront:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 747
    iget-object v0, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->mPicPreviewFront:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    return-void
.end method

.method private playSavePicButAnim()V
    .locals 4

    .line 697
    iget-object v0, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->mSavePicBtn:Landroid/widget/LinearLayout;

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    const-string v3, "aa"

    .line 698
    invoke-static {v0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0x96

    .line 699
    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const/4 v2, 0x1

    .line 700
    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 701
    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 702
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, v2}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 703
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 704
    new-instance v1, Lcom/zui/gallery/app/Best4KVideoSelectActivity$7;

    invoke-direct {v1, p0}, Lcom/zui/gallery/app/Best4KVideoSelectActivity$7;-><init>(Lcom/zui/gallery/app/Best4KVideoSelectActivity;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f666666    # 0.9f
    .end array-data
.end method

.method private playShowBestFrameAnim(I)V
    .locals 2

    .line 577
    invoke-direct {p0, p1}, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->BSearch(I)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 578
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "VideoEditActivity"

    const-string v1, "change frame"

    .line 579
    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    iget-object v0, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->mPicPreviewBack:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 583
    iget-object v0, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->mPicPreviewFront:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 584
    iget-object p1, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->mPicPreviewContainer:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->mPicPreviewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_0

    .line 585
    new-instance p1, Landroid/view/animation/AlphaAnimation;

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p1, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v0, 0xfa

    .line 586
    invoke-virtual {p1, v0, v1}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 587
    new-instance v0, Lcom/zui/gallery/app/Best4KVideoSelectActivity$6;

    invoke-direct {v0, p0}, Lcom/zui/gallery/app/Best4KVideoSelectActivity$6;-><init>(Lcom/zui/gallery/app/Best4KVideoSelectActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 600
    iget-object v0, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->mPicPreviewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method private previewBestSelectFrame(I)V
    .locals 2

    .line 606
    invoke-direct {p0, p1}, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->BSearch(I)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 607
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "VideoEditActivity"

    const-string v1, "change frame"

    .line 608
    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    iget-object v0, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->mPicPreviewContainer:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 611
    iget-object v0, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->mPicPreviewBack:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 613
    iget-object v0, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->mPicPreviewFront:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method private saveBestFrame2File(J)Z
    .locals 20

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    .line 823
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    long-to-int v0, v2

    .line 825
    invoke-direct {v1, v0}, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->getTimeKey(I)I

    move-result v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "VideoEditActivity"

    const/4 v9, -0x1

    if-ne v0, v9, :cond_0

    .line 827
    invoke-direct/range {p0 .. p2}, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->getFrameBitmapByTime(J)Landroid/graphics/Bitmap;

    move-result-object v0

    goto/16 :goto_1

    .line 829
    :cond_0
    new-instance v9, Ljava/io/File;

    invoke-virtual/range {p0 .. p0}, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->getExternalCacheDir()Ljava/io/File;

    move-result-object v10

    const-string v11, "4kcache"

    invoke-direct {v9, v10, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 831
    new-instance v10, Ljava/io/File;

    iget-object v11, v1, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->mSrcVideoPath:Ljava/lang/String;

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 832
    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "."

    .line 833
    invoke-virtual {v10, v11}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v11

    if-lez v11, :cond_2

    .line 835
    invoke-virtual {v10, v7, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 836
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 837
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v11}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 838
    new-instance v9, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v11, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 839
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 840
    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v16

    .line 841
    iget v0, v1, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->mVideoRoateDegree:I

    if-lez v0, :cond_1

    if-eqz v16, :cond_1

    .line 843
    :try_start_0
    new-instance v14, Landroid/graphics/Matrix;

    invoke-direct {v14}, Landroid/graphics/Matrix;-><init>()V

    .line 844
    iget v0, v1, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->mVideoRoateDegree:I

    int-to-float v0, v0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    invoke-virtual {v14, v0, v9, v10}, Landroid/graphics/Matrix;->setRotate(FFF)V

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 846
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    const/4 v15, 0x1

    move-object/from16 v9, v16

    .line 845
    invoke-static/range {v9 .. v15}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 847
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    .line 849
    :try_start_1
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v9

    goto :goto_1

    :catch_0
    move-exception v0

    move-object/from16 v19, v9

    move-object v9, v0

    move-object/from16 v0, v19

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v9, v0

    move-object/from16 v0, v16

    :goto_0
    const-string v10, "save best frame from cache out of memory "

    .line 851
    invoke-static {v8, v10, v9}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_1
    move-object/from16 v0, v16

    goto :goto_1

    :cond_2
    move-object v0, v6

    :goto_1
    if-nez v0, :cond_3

    .line 859
    invoke-direct/range {p0 .. p2}, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->getFrameBitmapByTime(J)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_3
    const-string v9, " is null"

    if-eqz v0, :cond_a

    .line 862
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyyMMdd_HHmmss"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 863
    new-instance v3, Ljava/sql/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-direct {v3, v10, v11}, Ljava/sql/Date;-><init>(J)V

    .line 864
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "IMG_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".jpg"

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 865
    new-instance v3, Ljava/io/File;

    iget-object v10, v1, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->mDstVideoDir:Ljava/lang/String;

    invoke-direct {v3, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 866
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_4

    .line 867
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 869
    :cond_4
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    .line 872
    :try_start_2
    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 873
    :try_start_3
    sget-object v11, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v12, 0x64

    invoke-virtual {v0, v11, v12, v10}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 874
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    new-array v0, v3, [Ljava/lang/String;

    aput-object v2, v0, v7

    .line 875
    invoke-static {v1, v0, v6, v6}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    const-wide/16 v11, 0x12c

    .line 878
    invoke-static {v11, v12}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 883
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    sget-object v14, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v0, "_id"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v15

    const-string v16, "_data=?"

    new-array v0, v3, [Ljava/lang/String;

    aput-object v2, v0, v7

    const/16 v18, 0x0

    move-object/from16 v17, v0

    invoke-virtual/range {v13 .. v18}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 888
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 889
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-lez v0, :cond_5

    .line 891
    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    int-to-long v11, v0

    invoke-static {v2, v11, v12}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v1, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->mNewPicUri:Landroid/net/Uri;

    .line 893
    iget-boolean v0, v1, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->mSecureCameraCall:Z

    .line 897
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "new create pic uri is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->mNewPicUri:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 899
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "query new save picture  "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_6
    :goto_2
    if-eqz v6, :cond_8

    .line 906
    :goto_3
    :try_start_5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_4

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_7

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 908
    :cond_7
    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catch_2
    if-eqz v6, :cond_8

    goto :goto_3

    .line 916
    :cond_8
    :goto_4
    :try_start_6
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    :catch_3
    move v7, v3

    goto :goto_7

    :catchall_1
    move-exception v0

    move-object v6, v10

    goto :goto_6

    :catch_4
    move-exception v0

    move-object v6, v10

    goto :goto_5

    :catchall_2
    move-exception v0

    goto :goto_6

    :catch_5
    move-exception v0

    :goto_5
    :try_start_7
    const-string v2, "save best frame exception "

    .line 912
    invoke-static {v8, v2, v0}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    if-eqz v6, :cond_b

    .line 916
    :try_start_8
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    goto :goto_7

    :goto_6
    if-eqz v6, :cond_9

    :try_start_9
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 920
    :catch_6
    :cond_9
    throw v0

    .line 922
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getFrameBitmapByTime at time "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    :catch_7
    :cond_b
    :goto_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "save best frame result "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " spend time "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 926
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 924
    invoke-static {v8, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v7
.end method

.method private savePicture()V
    .locals 7

    .line 618
    iget-object v0, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->mSavePictureTask:Lcom/zui/gallery/app/Best4KVideoSelectActivity$SavePictureTask;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 619
    invoke-virtual {v0, v1}, Lcom/zui/gallery/app/Best4KVideoSelectActivity$SavePictureTask;->cancel(Z)Z

    .line 621
    :cond_0
    invoke-direct {p0}, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->playSavePicButAnim()V

    const/4 v0, 0x0

    .line 622
    iput-boolean v0, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->isSaveBestFrameDone:Z

    .line 623
    iget-boolean v2, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->isSaveBestFrameDone:Z

    invoke-direct {p0, v2}, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->enableSavePicBtn(Z)V

    .line 624
    invoke-direct {p0}, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->initPaint()V

    .line 628
    new-instance v2, Lcom/zui/gallery/app/Best4KVideoSelectActivity$SavePictureTask;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/zui/gallery/app/Best4KVideoSelectActivity$SavePictureTask;-><init>(Lcom/zui/gallery/app/Best4KVideoSelectActivity;Lcom/zui/gallery/app/Best4KVideoSelectActivity$1;)V

    iput-object v2, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->mSavePictureTask:Lcom/zui/gallery/app/Best4KVideoSelectActivity$SavePictureTask;

    .line 629
    iget-wide v2, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->lastSeekPosition:J

    long-to-int v2, v2

    if-gez v2, :cond_1

    int-to-long v3, v2

    .line 630
    iget-wide v5, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->mVideoDuration:J

    cmp-long v3, v3, v5

    if-lez v3, :cond_1

    .line 631
    iget-object v2, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->mVideoPlayer:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v2

    .line 633
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "save picture at time "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "VideoEditActivity"

    invoke-static {v4, v3}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    mul-int/lit16 v3, v2, 0x3e8

    .line 634
    invoke-direct {p0, v3}, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->previewBestSelectFrame(I)V

    .line 635
    iget-object v3, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->mSavePictureTask:Lcom/zui/gallery/app/Best4KVideoSelectActivity$SavePictureTask;

    new-array v1, v1, [Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-virtual {v3, v1}, Lcom/zui/gallery/app/Best4KVideoSelectActivity$SavePictureTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private setProgress()I
    .locals 14

    .line 455
    iget-object v0, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->mVideoPlayer:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    .line 456
    iget-object v1, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->mVideoPlayer:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->getDuration()I

    move-result v1

    int-to-long v2, v0

    .line 457
    iput-wide v2, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->mCurrentPosition:J

    .line 461
    iget-wide v2, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->mCurrentPosition:J

    iget-wide v4, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->mTrimStartTime:J

    cmp-long v0, v2, v4

    if-gez v0, :cond_0

    iget-boolean v0, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->hasMoved:Z

    if-nez v0, :cond_0

    .line 462
    iget-wide v2, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->mTrimStartTime:J

    iput-wide v2, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->mCurrentPosition:J

    .line 463
    iget-object v0, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->mVideoPlayer:Landroid/widget/VideoView;

    iget-wide v2, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->mCurrentPosition:J

    long-to-int v2, v2

    invoke-virtual {v0, v2}, Landroid/widget/VideoView;->seekTo(I)V

    const/4 v0, 0x1

    .line 464
    iput-boolean v0, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->hasMoved:Z

    .line 468
    :cond_0
    iget-wide v2, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->mCurrentPosition:J

    iget-wide v4, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->mTrimEndTime:J

    cmp-long v0, v2, v4

    if-ltz v0, :cond_1

    iget-wide v2, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->mTrimEndTime:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    .line 469
    iget-object v0, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->mVideoPlayer:Landroid/widget/VideoView;

    iget-wide v2, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->mTrimStartTime:J

    long-to-int v2, v2

    invoke-virtual {v0, v2}, Landroid/widget/VideoView;->seekTo(I)V

    .line 470
    iget-wide v2, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->mTrimStartTime:J

    iput-wide v2, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->mCurrentPosition:J

    .line 480
    :cond_1
    iget-object v4, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->mController:Lcom/zui/gallery/ui/videoedit/OperationBar;

    iget-wide v5, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->mCurrentPosition:J

    int-to-long v7, v1

    iget-wide v9, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->mTrimStartTime:J

    iget-wide v11, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->mTrimEndTime:J

    const/4 v13, 0x1

    invoke-virtual/range {v4 .. v13}, Lcom/zui/gallery/ui/videoedit/OperationBar;->setTimes(JJJJZ)V

    .line 483
    iget-wide v0, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->mCurrentPosition:J

    long-to-int v0, v0

    return v0
.end method


# virtual methods
.method protected doSave(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 324
    invoke-direct {p0, p3}, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->copyCacheFile4NewVideo(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 331
    invoke-direct {p0}, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->deleteCacheFolder()V

    .line 332
    iget-object p1, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->mediaItem:Lcom/zui/gallery/data/LocalVideo;

    invoke-virtual {p1}, Lcom/zui/gallery/data/LocalVideo;->delete()V

    :cond_0
    return-void
.end method

.method protected initView()V
    .locals 4

    const v0, 0x7f0802df

    .line 130
    invoke-virtual {p0, v0}, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->mSavePicBtn:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    .line 131
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 132
    iget-object v0, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->mSavePicBtn:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 133
    iget-object v0, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->mSavePicBtn:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/16 v2, 0x11

    invoke-direct {v0, v1, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 140
    new-instance v1, Landroid/widget/VideoView;

    invoke-direct {v1, p0}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->mVideoPlayer:Landroid/widget/VideoView;

    .line 141
    invoke-virtual {v1, v0}, Landroid/widget/VideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 142
    iget-object v0, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->mVideoContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->mVideoPlayer:Landroid/widget/VideoView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 143
    iget-object v0, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->mVideoPlayer:Landroid/widget/VideoView;

    invoke-virtual {v0, p0}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 144
    iget-object v0, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->mVideoPlayer:Landroid/widget/VideoView;

    invoke-virtual {v0, p0}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 145
    iget-object v0, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->mVideoPlayer:Landroid/widget/VideoView;

    invoke-virtual {v0, p0}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 146
    iget-object v0, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->mVideoPlayer:Landroid/widget/VideoView;

    invoke-virtual {v0, p0}, Landroid/widget/VideoView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 147
    iget-object v0, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->mVideoPlayer:Landroid/widget/VideoView;

    iget-object v1, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->mSrcVideoPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVideoPath(Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->info:Lcom/zui/gallery/app/VideoEditBaseActivity$RestoreInfo;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->info:Lcom/zui/gallery/app/VideoEditBaseActivity$RestoreInfo;

    iget v0, v0, Lcom/zui/gallery/app/VideoEditBaseActivity$RestoreInfo;->lastSeekPosition:I

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->lastSeekPosition:J

    .line 152
    iget-object v0, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->info:Lcom/zui/gallery/app/VideoEditBaseActivity$RestoreInfo;

    iget-boolean v0, v0, Lcom/zui/gallery/app/VideoEditBaseActivity$RestoreInfo;->playing:Z

    iput-boolean v0, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->isPlaying:Z

    .line 153
    iget-object v0, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->info:Lcom/zui/gallery/app/VideoEditBaseActivity$RestoreInfo;

    iget-wide v0, v0, Lcom/zui/gallery/app/VideoEditBaseActivity$RestoreInfo;->playPosition:J

    iput-wide v0, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->mCurrentPosition:J

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->info:Lcom/zui/gallery/app/VideoEditBaseActivity$RestoreInfo;

    if-nez v0, :cond_1

    .line 157
    iget-object v0, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->mVideoPlayer:Landroid/widget/VideoView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVisibility(I)V

    .line 158
    iget-object v0, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->mVideoPlayer:Landroid/widget/VideoView;

    new-instance v1, Lcom/zui/gallery/app/Best4KVideoSelectActivity$2;

    invoke-direct {v1, p0}, Lcom/zui/gallery/app/Best4KVideoSelectActivity$2;-><init>(Lcom/zui/gallery/app/Best4KVideoSelectActivity;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/VideoView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method public isCacheValid(Z)V
    .locals 0

    xor-int/lit8 p1, p1, 0x1

    .line 941
    iput-boolean p1, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->needDeleteCacheFile:Z

    return-void
.end method

.method protected isPlaying()Z
    .locals 1

    .line 294
    iget-object v0, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->mVideoPlayer:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->isPlaying:Z

    .line 295
    iget-boolean v0, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->isPlaying:Z

    return v0
.end method

.method protected loadThumbnailFrame()V
    .locals 3

    .line 671
    iget-object v0, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->mController:Lcom/zui/gallery/ui/videoedit/OperationBar;

    if-eqz v0, :cond_0

    .line 672
    iget-object v0, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->mController:Lcom/zui/gallery/ui/videoedit/OperationBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zui/gallery/ui/videoedit/OperationBar;->neeShowLoadPercent(Z)V

    .line 674
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->extractTask:Lcom/zui/gallery/util/Future;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 675
    invoke-interface {v0}, Lcom/zui/gallery/util/Future;->cancel()V

    .line 676
    iput-object v1, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->extractTask:Lcom/zui/gallery/util/Future;

    .line 678
    :cond_1
    iget-object v0, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->mediaItem:Lcom/zui/gallery/data/LocalVideo;

    invoke-static {p0, v0}, Lcom/zui/gallery/app/ExtractFrameProcesser;->getInstance(Lcom/zui/gallery/app/ExtractFrameProcesser$ExtractListener;Lcom/zui/gallery/data/LocalVideo;)Lcom/zui/gallery/app/ExtractFrameProcesser;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->extractFrameProcesser:Lcom/zui/gallery/app/ExtractFrameProcesser;

    .line 679
    invoke-virtual {v0}, Lcom/zui/gallery/app/ExtractFrameProcesser;->start()V

    .line 680
    iget-object v0, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->mApp:Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {v0}, Lcom/zui/gallery/app/GalleryApp;->getThreadPool()Lcom/zui/gallery/util/ThreadPool;

    move-result-object v0

    new-instance v2, Lcom/zui/gallery/app/Best4KVideoSelectActivity$ExtractFrameLoader;

    invoke-direct {v2, p0, v1}, Lcom/zui/gallery/app/Best4KVideoSelectActivity$ExtractFrameLoader;-><init>(Lcom/zui/gallery/app/Best4KVideoSelectActivity;Lcom/zui/gallery/app/Best4KVideoSelectActivity$1;)V

    invoke-virtual {v0, v2}, Lcom/zui/gallery/util/ThreadPool;->submit(Lcom/zui/gallery/util/ThreadPool$Job;)Lcom/zui/gallery/util/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->extractTask:Lcom/zui/gallery/util/Future;

    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .line 225
    iget-object v0, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->mNewPicUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    .line 226
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v2, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->mNewPicUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->setResult(ILandroid/content/Intent;)V

    .line 227
    invoke-virtual {p0}, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->finish()V

    goto :goto_0

    .line 229
    :cond_0
    invoke-super {p0}, Lcom/zui/gallery/app/VideoEditBaseActivity;->onBackPressed()V

    :goto_0
    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 645
    iput-wide v0, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->lastSeekPosition:J

    .line 646
    iget-object p1, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->mVideoPlayer:Landroid/widget/VideoView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/VideoView;->seekTo(I)V

    .line 647
    invoke-virtual {p0}, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->play()V

    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .line 236
    invoke-super {p0}, Lcom/zui/gallery/app/VideoEditBaseActivity;->onDestroy()V

    .line 237
    iget-boolean v0, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->needDeleteCacheFile:Z

    if-eqz v0, :cond_0

    .line 238
    invoke-direct {p0}, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->deleteCacheFolder()V

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->extractTask:Lcom/zui/gallery/util/Future;

    if-eqz v0, :cond_1

    .line 241
    invoke-interface {v0}, Lcom/zui/gallery/util/Future;->cancel()V

    :cond_1
    const/4 v0, 0x0

    .line 243
    iput-object v0, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->extractTask:Lcom/zui/gallery/util/Future;

    .line 249
    iget-object v0, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->mVideoPlayer:Landroid/widget/VideoView;

    if-eqz v0, :cond_2

    .line 250
    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    .line 252
    :cond_2
    iget-object v0, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->extractFrameProcesser:Lcom/zui/gallery/app/ExtractFrameProcesser;

    if-eqz v0, :cond_3

    .line 253
    invoke-virtual {v0}, Lcom/zui/gallery/app/ExtractFrameProcesser;->stop()V

    .line 255
    :cond_3
    iget-object v0, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->bestFrames:Ljava/util/Map;

    if-eqz v0, :cond_6

    .line 256
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 257
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    if-eqz v1, :cond_4

    .line 258
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_4

    .line 259
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 263
    :cond_5
    iget-object v0, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->bestFrames:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_6
    const-string v0, "VideoEditActivity"

    const-string v1, "onDestroy"

    .line 265
    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onExtractComplete(Ljava/util/List;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 963
    iput-boolean v0, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->needDeleteCacheFile:Z

    .line 964
    iput-object p1, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->times:Ljava/util/List;

    .line 965
    iput-object p2, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->bestFrames:Ljava/util/Map;

    const/4 p1, 0x1

    .line 966
    iput-boolean p1, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->isExtractFrameDone:Z

    .line 967
    iget-object p1, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->animHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    const/4 p2, 0x2

    .line 968
    iput p2, p1, Landroid/os/Message;->what:I

    .line 972
    iget-object p2, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->animHandler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 973
    iget-object p1, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->mController:Lcom/zui/gallery/ui/videoedit/OperationBar;

    if-eqz p1, :cond_0

    .line 974
    iget-object p1, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->mController:Lcom/zui/gallery/ui/videoedit/OperationBar;

    invoke-virtual {p1, v0}, Lcom/zui/gallery/ui/videoedit/OperationBar;->neeShowLoadPercent(Z)V

    :cond_0
    return-void
.end method

.method public onExtractError()V
    .locals 2

    const-string v0, "VideoEditActivity"

    const-string v1, "extractError"

    .line 951
    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onExtractStart()V
    .locals 2

    const-string v0, "VideoEditActivity"

    const-string v1, "extractBestFrameStart"

    .line 946
    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onFrameThumnailLoad(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 980
    invoke-virtual {p0, p1}, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->setBottomFrameThumbnail(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onPause()V
    .locals 5

    .line 196
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 197
    invoke-super {p0}, Lcom/zui/gallery/app/VideoEditBaseActivity;->onPause()V

    .line 199
    invoke-virtual {p0}, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 200
    invoke-virtual {p0}, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->pause()V

    .line 203
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPause "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoEditActivity"

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 658
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->mVideoDuration:J

    .line 659
    iget-object p1, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->mController:Lcom/zui/gallery/ui/videoedit/OperationBar;

    if-eqz p1, :cond_1

    .line 660
    iget-boolean p1, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->isPlayerReady:Z

    if-nez p1, :cond_0

    .line 661
    iget-object p1, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->mController:Lcom/zui/gallery/ui/videoedit/OperationBar;

    iget-wide v0, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->mVideoDuration:J

    invoke-virtual {p1, v0, v1}, Lcom/zui/gallery/ui/videoedit/OperationBar;->initDuration(J)V

    const/4 p1, 0x1

    .line 662
    iput-boolean p1, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->isPlayerReady:Z

    .line 664
    :cond_0
    iget-object p1, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->mController:Lcom/zui/gallery/ui/videoedit/OperationBar;

    iget-boolean v0, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->isPlayerReady:Z

    invoke-virtual {p1, v0}, Lcom/zui/gallery/ui/videoedit/OperationBar;->initReady(Z)V

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 5

    .line 183
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 184
    invoke-super {p0}, Lcom/zui/gallery/app/VideoEditBaseActivity;->onResume()V

    .line 185
    iget-object v2, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->mVideoPlayer:Landroid/widget/VideoView;

    if-eqz v2, :cond_0

    .line 186
    iget-wide v3, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->mCurrentPosition:J

    long-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/VideoView;->seekTo(I)V

    .line 187
    :cond_0
    iget-boolean v2, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->isPlaying:Z

    if-eqz v2, :cond_1

    .line 188
    invoke-virtual {p0}, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->playHidenBestFrameAnim()V

    .line 189
    invoke-virtual {p0}, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->play()V

    .line 191
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onResume "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoEditActivity"

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 215
    invoke-super {p0, p1}, Lcom/zui/gallery/app/VideoEditBaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "VideoEditActivity"

    const-string v1, "onSaveInstanceState"

    .line 216
    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/app/VideoEditBaseActivity$RestoreInfo;

    if-eqz p1, :cond_0

    .line 219
    iget-wide v0, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->lastSeekPosition:J

    long-to-int v0, v0

    iput v0, p1, Lcom/zui/gallery/app/VideoEditBaseActivity$RestoreInfo;->lastSeekPosition:I

    :cond_0
    return-void
.end method

.method public onSeekEnd()V
    .locals 0

    return-void
.end method

.method public onSeekMove(J)V
    .locals 3

    .line 309
    iput-wide p1, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->lastSeekPosition:J

    const/4 v0, 0x0

    .line 310
    iput-boolean v0, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->hasMoved:Z

    .line 311
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "seektime "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->lastSeekPosition:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoEditActivity"

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    iput-wide p1, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->mCurrentPosition:J

    .line 313
    iget-object v0, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->mVideoPlayer:Landroid/widget/VideoView;

    long-to-int p1, p1

    invoke-virtual {v0, p1}, Landroid/widget/VideoView;->seekTo(I)V

    mul-int/lit16 p1, p1, 0x3e8

    .line 314
    invoke-direct {p0, p1}, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->previewBestSelectFrame(I)V

    return-void
.end method

.method public onSeekStart()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 300
    iput-wide v0, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->lastSeekPosition:J

    .line 301
    invoke-virtual {p0}, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->pause()V

    return-void
.end method

.method protected onStop()V
    .locals 5

    .line 208
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 209
    invoke-super {p0}, Lcom/zui/gallery/app/VideoEditBaseActivity;->onStop()V

    .line 210
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStop "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoEditActivity"

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public pause()V
    .locals 2

    .line 280
    iget-object v0, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->mProgressChecker:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 281
    iget-object v0, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->mVideoPlayer:Landroid/widget/VideoView;

    if-eqz v0, :cond_1

    .line 282
    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    .line 283
    iget-object v0, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->mVideoPlayer:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->lastSeekPosition:J

    .line 284
    invoke-virtual {p0}, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->isTrimValid()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->enableDoneBtn(Z)V

    .line 285
    iget-boolean v0, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->isExtractFrameDone:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->isSaveBestFrameDone:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-direct {p0, v0}, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->enableSavePicBtn(Z)V

    .line 286
    iget-object v0, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->mController:Lcom/zui/gallery/ui/videoedit/OperationBar;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/videoedit/OperationBar;->onPause()V

    .line 287
    invoke-virtual {p0, v1}, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->updatePlayIcon(Z)V

    .line 288
    iget-wide v0, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->lastSeekPosition:J

    long-to-int v0, v0

    mul-int/lit16 v0, v0, 0x3e8

    invoke-direct {p0, v0}, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->playShowBestFrameAnim(I)V

    :cond_1
    return-void
.end method

.method public play()V
    .locals 2

    const/4 v0, 0x0

    .line 270
    invoke-virtual {p0, v0}, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->enableDoneBtn(Z)V

    .line 271
    invoke-direct {p0, v0}, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->enableSavePicBtn(Z)V

    .line 272
    iget-object v0, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->mVideoPlayer:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 273
    iget-object v0, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->mProgressChecker:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 274
    iget-object v0, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->mController:Lcom/zui/gallery/ui/videoedit/OperationBar;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/videoedit/OperationBar;->onPlay()V

    const/4 v0, 0x1

    .line 275
    invoke-virtual {p0, v0}, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->updatePlayIcon(Z)V

    return-void
.end method

.method public updateExtractPercent(F)V
    .locals 1

    .line 956
    iget-object v0, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->mController:Lcom/zui/gallery/ui/videoedit/OperationBar;

    if-eqz v0, :cond_0

    .line 957
    iget-object v0, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->mController:Lcom/zui/gallery/ui/videoedit/OperationBar;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/ui/videoedit/OperationBar;->updateLoadPercent(F)V

    :cond_0
    return-void
.end method
