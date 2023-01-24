.class Lcom/zui/gallery/filtershow/meishefilter/NvHttpRequest$2;
.super Ljava/lang/Object;
.source "NvHttpRequest.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/filtershow/meishefilter/NvHttpRequest;->downloadAsset(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/zui/gallery/filtershow/meishefilter/NvHttpRequest$NvHttpRequestListener;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/filtershow/meishefilter/NvHttpRequest;

.field final synthetic val$assetDownloadDir:Ljava/lang/String;

.field final synthetic val$assetSuffixName:Ljava/lang/String;

.field final synthetic val$desFileUrl:Ljava/lang/String;

.field final synthetic val$localAssetType:I

.field final synthetic val$localDownloadId:Ljava/lang/String;

.field final synthetic val$localDownloadListener:Lcom/zui/gallery/filtershow/meishefilter/NvHttpRequest$NvHttpRequestListener;


# direct methods
.method constructor <init>(Lcom/zui/gallery/filtershow/meishefilter/NvHttpRequest;Ljava/lang/String;Lcom/zui/gallery/filtershow/meishefilter/NvHttpRequest$NvHttpRequestListener;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 346
    iput-object p1, p0, Lcom/zui/gallery/filtershow/meishefilter/NvHttpRequest$2;->this$0:Lcom/zui/gallery/filtershow/meishefilter/NvHttpRequest;

    iput-object p2, p0, Lcom/zui/gallery/filtershow/meishefilter/NvHttpRequest$2;->val$desFileUrl:Ljava/lang/String;

    iput-object p3, p0, Lcom/zui/gallery/filtershow/meishefilter/NvHttpRequest$2;->val$localDownloadListener:Lcom/zui/gallery/filtershow/meishefilter/NvHttpRequest$NvHttpRequestListener;

    iput p4, p0, Lcom/zui/gallery/filtershow/meishefilter/NvHttpRequest$2;->val$localAssetType:I

    iput-object p5, p0, Lcom/zui/gallery/filtershow/meishefilter/NvHttpRequest$2;->val$localDownloadId:Ljava/lang/String;

    iput-object p6, p0, Lcom/zui/gallery/filtershow/meishefilter/NvHttpRequest$2;->val$assetSuffixName:Ljava/lang/String;

    iput-object p7, p0, Lcom/zui/gallery/filtershow/meishefilter/NvHttpRequest$2;->val$assetDownloadDir:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 2

    .line 349
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/zui/gallery/filtershow/meishefilter/NvHttpRequest$2;->val$desFileUrl:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 350
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 351
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 353
    :cond_0
    iget-object p1, p0, Lcom/zui/gallery/filtershow/meishefilter/NvHttpRequest$2;->val$localDownloadListener:Lcom/zui/gallery/filtershow/meishefilter/NvHttpRequest$NvHttpRequestListener;

    if-eqz p1, :cond_1

    .line 354
    iget v0, p0, Lcom/zui/gallery/filtershow/meishefilter/NvHttpRequest$2;->val$localAssetType:I

    iget-object v1, p0, Lcom/zui/gallery/filtershow/meishefilter/NvHttpRequest$2;->val$localDownloadId:Ljava/lang/String;

    invoke-interface {p1, p2, v0, v1}, Lcom/zui/gallery/filtershow/meishefilter/NvHttpRequest$NvHttpRequestListener;->onDonwloadAssetFailed(Ljava/lang/Exception;ILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 360
    invoke-virtual {p2}, Lokhttp3/Response;->isSuccessful()Z

    move-result p1

    if-eqz p1, :cond_10

    .line 361
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/zui/gallery/filtershow/meishefilter/NvHttpRequest$2;->val$desFileUrl:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 365
    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "rw"

    invoke-direct {v1, p1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 366
    :try_start_1
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v2

    .line 367
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v0

    const/16 v4, 0x1000

    new-array v4, v4, [B

    const/4 v5, 0x0

    move v6, v5

    .line 370
    :cond_0
    :goto_0
    invoke-virtual {v0, v4}, Ljava/io/InputStream;->read([B)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_1

    add-int/2addr v6, v7

    .line 372
    invoke-virtual {v1, v4, v5, v7}, Ljava/io/RandomAccessFile;->write([BII)V

    mul-int/lit8 v7, v6, 0x64

    int-to-long v7, v7

    .line 374
    div-long/2addr v7, v2

    long-to-int v7, v7

    .line 375
    iget-object v8, p0, Lcom/zui/gallery/filtershow/meishefilter/NvHttpRequest$2;->val$localDownloadListener:Lcom/zui/gallery/filtershow/meishefilter/NvHttpRequest$NvHttpRequestListener;

    if-eqz v8, :cond_0

    .line 376
    iget-object v8, p0, Lcom/zui/gallery/filtershow/meishefilter/NvHttpRequest$2;->val$localDownloadListener:Lcom/zui/gallery/filtershow/meishefilter/NvHttpRequest$NvHttpRequestListener;

    iget v9, p0, Lcom/zui/gallery/filtershow/meishefilter/NvHttpRequest$2;->val$localAssetType:I

    iget-object v10, p0, Lcom/zui/gallery/filtershow/meishefilter/NvHttpRequest$2;->val$localDownloadId:Ljava/lang/String;

    invoke-interface {v8, v7, v9, v10}, Lcom/zui/gallery/filtershow/meishefilter/NvHttpRequest$NvHttpRequestListener;->onDonwloadAssetProgress(IILjava/lang/String;)V

    goto :goto_0

    .line 383
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".tmp"

    .line 384
    iget-object v4, p0, Lcom/zui/gallery/filtershow/meishefilter/NvHttpRequest$2;->val$assetSuffixName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 385
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/zui/gallery/filtershow/meishefilter/NvHttpRequest$2;->val$assetDownloadDir:Ljava/lang/String;

    invoke-direct {v3, v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    invoke-virtual {p1, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 388
    iget-object v2, p0, Lcom/zui/gallery/filtershow/meishefilter/NvHttpRequest$2;->val$localDownloadListener:Lcom/zui/gallery/filtershow/meishefilter/NvHttpRequest$NvHttpRequestListener;

    if-eqz v2, :cond_2

    .line 389
    iget-object v2, p0, Lcom/zui/gallery/filtershow/meishefilter/NvHttpRequest$2;->val$localDownloadListener:Lcom/zui/gallery/filtershow/meishefilter/NvHttpRequest$NvHttpRequestListener;

    const/4 v4, 0x1

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iget v5, p0, Lcom/zui/gallery/filtershow/meishefilter/NvHttpRequest$2;->val$localAssetType:I

    iget-object v6, p0, Lcom/zui/gallery/filtershow/meishefilter/NvHttpRequest$2;->val$localDownloadId:Ljava/lang/String;

    invoke-interface {v2, v4, v3, v5, v6}, Lcom/zui/gallery/filtershow/meishefilter/NvHttpRequest$NvHttpRequestListener;->onDonwloadAssetSuccess(ZLjava/lang/String;ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 409
    :cond_2
    :try_start_2
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/ResponseBody;->close()V

    if-eqz v0, :cond_3

    .line 411
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 413
    :cond_3
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_6

    :catch_0
    move-exception p2

    .line 415
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 416
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 418
    :cond_4
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    .line 419
    iget-object p1, p0, Lcom/zui/gallery/filtershow/meishefilter/NvHttpRequest$2;->val$localDownloadListener:Lcom/zui/gallery/filtershow/meishefilter/NvHttpRequest$NvHttpRequestListener;

    if-eqz p1, :cond_11

    .line 420
    :goto_1
    iget v0, p0, Lcom/zui/gallery/filtershow/meishefilter/NvHttpRequest$2;->val$localAssetType:I

    iget-object v1, p0, Lcom/zui/gallery/filtershow/meishefilter/NvHttpRequest$2;->val$localDownloadId:Ljava/lang/String;

    invoke-interface {p1, p2, v0, v1}, Lcom/zui/gallery/filtershow/meishefilter/NvHttpRequest$NvHttpRequestListener;->onDonwloadAssetFailed(Ljava/lang/Exception;ILjava/lang/String;)V

    goto/16 :goto_6

    :catchall_0
    move-exception v2

    goto/16 :goto_4

    :catch_1
    move-exception v2

    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    goto :goto_2

    :catch_2
    move-exception v2

    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    goto :goto_3

    :catchall_1
    move-exception v2

    move-object v1, v0

    goto/16 :goto_4

    :catch_3
    move-exception v2

    move-object v1, v0

    .line 400
    :goto_2
    :try_start_3
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 401
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 403
    :cond_5
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 404
    iget-object v3, p0, Lcom/zui/gallery/filtershow/meishefilter/NvHttpRequest$2;->val$localDownloadListener:Lcom/zui/gallery/filtershow/meishefilter/NvHttpRequest$NvHttpRequestListener;

    if-eqz v3, :cond_6

    .line 405
    iget-object v3, p0, Lcom/zui/gallery/filtershow/meishefilter/NvHttpRequest$2;->val$localDownloadListener:Lcom/zui/gallery/filtershow/meishefilter/NvHttpRequest$NvHttpRequestListener;

    iget v4, p0, Lcom/zui/gallery/filtershow/meishefilter/NvHttpRequest$2;->val$localAssetType:I

    iget-object v5, p0, Lcom/zui/gallery/filtershow/meishefilter/NvHttpRequest$2;->val$localDownloadId:Ljava/lang/String;

    invoke-interface {v3, v2, v4, v5}, Lcom/zui/gallery/filtershow/meishefilter/NvHttpRequest$NvHttpRequestListener;->onDonwloadAssetFailed(Ljava/lang/Exception;ILjava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 409
    :cond_6
    :try_start_4
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/ResponseBody;->close()V

    if-eqz v1, :cond_7

    .line 411
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_7
    if-eqz v0, :cond_11

    .line 413
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_6

    :catch_4
    move-exception p2

    .line 415
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 416
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 418
    :cond_8
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    .line 419
    iget-object p1, p0, Lcom/zui/gallery/filtershow/meishefilter/NvHttpRequest$2;->val$localDownloadListener:Lcom/zui/gallery/filtershow/meishefilter/NvHttpRequest$NvHttpRequestListener;

    if-eqz p1, :cond_11

    goto :goto_1

    :catch_5
    move-exception v2

    move-object v1, v0

    .line 392
    :goto_3
    :try_start_5
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 393
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 395
    :cond_9
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 396
    iget-object v3, p0, Lcom/zui/gallery/filtershow/meishefilter/NvHttpRequest$2;->val$localDownloadListener:Lcom/zui/gallery/filtershow/meishefilter/NvHttpRequest$NvHttpRequestListener;

    if-eqz v3, :cond_a

    .line 397
    iget-object v3, p0, Lcom/zui/gallery/filtershow/meishefilter/NvHttpRequest$2;->val$localDownloadListener:Lcom/zui/gallery/filtershow/meishefilter/NvHttpRequest$NvHttpRequestListener;

    iget v4, p0, Lcom/zui/gallery/filtershow/meishefilter/NvHttpRequest$2;->val$localAssetType:I

    iget-object v5, p0, Lcom/zui/gallery/filtershow/meishefilter/NvHttpRequest$2;->val$localDownloadId:Ljava/lang/String;

    invoke-interface {v3, v2, v4, v5}, Lcom/zui/gallery/filtershow/meishefilter/NvHttpRequest$NvHttpRequestListener;->onDonwloadAssetFailed(Ljava/lang/Exception;ILjava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 409
    :cond_a
    :try_start_6
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/ResponseBody;->close()V

    if-eqz v1, :cond_b

    .line 411
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_b
    if-eqz v0, :cond_11

    .line 413
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_6

    :catch_6
    move-exception p2

    .line 415
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 416
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 418
    :cond_c
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    .line 419
    iget-object p1, p0, Lcom/zui/gallery/filtershow/meishefilter/NvHttpRequest$2;->val$localDownloadListener:Lcom/zui/gallery/filtershow/meishefilter/NvHttpRequest$NvHttpRequestListener;

    if-eqz p1, :cond_11

    goto/16 :goto_1

    :catchall_2
    move-exception v2

    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    .line 409
    :goto_4
    :try_start_7
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/ResponseBody;->close()V

    if-eqz v0, :cond_d

    .line 411
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_d
    if-eqz v1, :cond_f

    .line 413
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_5

    :catch_7
    move-exception p2

    .line 415
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 416
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 418
    :cond_e
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    .line 419
    iget-object p1, p0, Lcom/zui/gallery/filtershow/meishefilter/NvHttpRequest$2;->val$localDownloadListener:Lcom/zui/gallery/filtershow/meishefilter/NvHttpRequest$NvHttpRequestListener;

    if-eqz p1, :cond_f

    .line 420
    iget v0, p0, Lcom/zui/gallery/filtershow/meishefilter/NvHttpRequest$2;->val$localAssetType:I

    iget-object v1, p0, Lcom/zui/gallery/filtershow/meishefilter/NvHttpRequest$2;->val$localDownloadId:Ljava/lang/String;

    invoke-interface {p1, p2, v0, v1}, Lcom/zui/gallery/filtershow/meishefilter/NvHttpRequest$NvHttpRequestListener;->onDonwloadAssetFailed(Ljava/lang/Exception;ILjava/lang/String;)V

    .line 423
    :cond_f
    :goto_5
    throw v2

    :cond_10
    const-string p1, "NvHttpRequest "

    const-string/jumbo p2, "\u670d\u52a1\u5668\u7aef\u9519\u8bef"

    .line 426
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    :goto_6
    return-void
.end method
