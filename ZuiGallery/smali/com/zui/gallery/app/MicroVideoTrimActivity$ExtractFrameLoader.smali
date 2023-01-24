.class Lcom/zui/gallery/app/MicroVideoTrimActivity$ExtractFrameLoader;
.super Ljava/lang/Object;
.source "MicroVideoTrimActivity.java"

# interfaces
.implements Lcom/zui/gallery/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/app/MicroVideoTrimActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExtractFrameLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/zui/gallery/util/ThreadPool$Job<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/app/MicroVideoTrimActivity;


# direct methods
.method private constructor <init>(Lcom/zui/gallery/app/MicroVideoTrimActivity;)V
    .locals 0

    .line 325
    iput-object p1, p0, Lcom/zui/gallery/app/MicroVideoTrimActivity$ExtractFrameLoader;->this$0:Lcom/zui/gallery/app/MicroVideoTrimActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zui/gallery/app/MicroVideoTrimActivity;Lcom/zui/gallery/app/MicroVideoTrimActivity$1;)V
    .locals 0

    .line 325
    invoke-direct {p0, p1}, Lcom/zui/gallery/app/MicroVideoTrimActivity$ExtractFrameLoader;-><init>(Lcom/zui/gallery/app/MicroVideoTrimActivity;)V

    return-void
.end method


# virtual methods
.method public run(Lcom/zui/gallery/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;
    .locals 10

    const-string v0, "MicroVideo"

    .line 329
    iget-object v1, p0, Lcom/zui/gallery/app/MicroVideoTrimActivity$ExtractFrameLoader;->this$0:Lcom/zui/gallery/app/MicroVideoTrimActivity;

    iget-object v1, v1, Lcom/zui/gallery/app/MicroVideoTrimActivity;->mediaItem:Lcom/zui/gallery/data/LocalImage;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 330
    new-instance v1, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v1}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 334
    :try_start_0
    new-instance v9, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/zui/gallery/app/MicroVideoTrimActivity$ExtractFrameLoader;->this$0:Lcom/zui/gallery/app/MicroVideoTrimActivity;

    iget-object v3, v3, Lcom/zui/gallery/app/MicroVideoTrimActivity;->mSrcVideoPath:Ljava/lang/String;

    invoke-direct {v9, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 335
    :try_start_1
    invoke-virtual {v9}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v4

    .line 336
    iget-object v3, p0, Lcom/zui/gallery/app/MicroVideoTrimActivity$ExtractFrameLoader;->this$0:Lcom/zui/gallery/app/MicroVideoTrimActivity;

    iget-wide v5, v3, Lcom/zui/gallery/app/MicroVideoTrimActivity;->offset:J

    iget-object v3, p0, Lcom/zui/gallery/app/MicroVideoTrimActivity$ExtractFrameLoader;->this$0:Lcom/zui/gallery/app/MicroVideoTrimActivity;

    iget-wide v7, v3, Lcom/zui/gallery/app/MicroVideoTrimActivity;->length:J

    move-object v3, v1

    invoke-virtual/range {v3 .. v8}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    const/16 v3, 0x18

    .line 338
    invoke-virtual {v1, v3}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v3

    .line 339
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "degreesString = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 346
    :try_start_2
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 351
    :catch_0
    iget-object v0, p0, Lcom/zui/gallery/app/MicroVideoTrimActivity$ExtractFrameLoader;->this$0:Lcom/zui/gallery/app/MicroVideoTrimActivity;

    invoke-virtual {v0, p1, v1}, Lcom/zui/gallery/app/MicroVideoTrimActivity;->parseVideoThumbnailBitmap(Lcom/zui/gallery/util/ThreadPool$JobContext;Landroid/media/MediaMetadataRetriever;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 353
    invoke-interface {p1}, Lcom/zui/gallery/util/ThreadPool$JobContext;->isCancelled()Z

    move-result p1

    if-eqz p1, :cond_4

    if-eqz v0, :cond_0

    .line 355
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    return-object v2

    :catch_1
    move-exception p1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_2
    move-exception p1

    move-object v9, v2

    .line 341
    :goto_0
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ExtractFrameLoader error :"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v9, :cond_1

    .line 346
    :try_start_4
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :catch_3
    :cond_1
    return-object v2

    :catchall_1
    move-exception p1

    move-object v2, v9

    :goto_1
    if-eqz v2, :cond_2

    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 350
    :catch_4
    :cond_2
    throw p1

    :cond_3
    move-object v0, v2

    .line 360
    :cond_4
    iget-object p1, p0, Lcom/zui/gallery/app/MicroVideoTrimActivity$ExtractFrameLoader;->this$0:Lcom/zui/gallery/app/MicroVideoTrimActivity;

    invoke-virtual {p1, v0}, Lcom/zui/gallery/app/MicroVideoTrimActivity;->setBottomFrameThumbnail(Landroid/graphics/Bitmap;)V

    return-object v2
.end method

.method public bridge synthetic run(Lcom/zui/gallery/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 0

    .line 325
    invoke-virtual {p0, p1}, Lcom/zui/gallery/app/MicroVideoTrimActivity$ExtractFrameLoader;->run(Lcom/zui/gallery/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method
