.class Lcom/zui/gallery/ui/mosaic/MosaicActivity$SaveTask;
.super Landroid/os/AsyncTask;
.source "MosaicActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/ui/mosaic/MosaicActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SaveTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private mRequestScanFileListener:Landroid/media/MediaScannerConnection$OnScanCompletedListener;

.field final synthetic this$0:Lcom/zui/gallery/ui/mosaic/MosaicActivity;


# direct methods
.method private constructor <init>(Lcom/zui/gallery/ui/mosaic/MosaicActivity;)V
    .locals 0

    .line 622
    iput-object p1, p0, Lcom/zui/gallery/ui/mosaic/MosaicActivity$SaveTask;->this$0:Lcom/zui/gallery/ui/mosaic/MosaicActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 708
    new-instance p1, Lcom/zui/gallery/ui/mosaic/MosaicActivity$SaveTask$1;

    invoke-direct {p1, p0}, Lcom/zui/gallery/ui/mosaic/MosaicActivity$SaveTask$1;-><init>(Lcom/zui/gallery/ui/mosaic/MosaicActivity$SaveTask;)V

    iput-object p1, p0, Lcom/zui/gallery/ui/mosaic/MosaicActivity$SaveTask;->mRequestScanFileListener:Landroid/media/MediaScannerConnection$OnScanCompletedListener;

    return-void
.end method

.method synthetic constructor <init>(Lcom/zui/gallery/ui/mosaic/MosaicActivity;Lcom/zui/gallery/ui/mosaic/MosaicActivity$1;)V
    .locals 0

    .line 622
    invoke-direct {p0, p1}, Lcom/zui/gallery/ui/mosaic/MosaicActivity$SaveTask;-><init>(Lcom/zui/gallery/ui/mosaic/MosaicActivity;)V

    return-void
.end method

.method private requestScanFile(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 701
    iget-object p2, p0, Lcom/zui/gallery/ui/mosaic/MosaicActivity$SaveTask;->mRequestScanFileListener:Landroid/media/MediaScannerConnection$OnScanCompletedListener;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1, p2}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    return-void
.end method

.method private updateExifData(Lcom/zui/gallery/exif/ExifInterface;J)V
    .locals 2

    .line 759
    sget v0, Lcom/zui/gallery/exif/ExifInterface;->TAG_DATE_TIME:I

    .line 760
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    .line 759
    invoke-virtual {p1, v0, p2, p3, v1}, Lcom/zui/gallery/exif/ExifInterface;->addDateTimeStampTag(IJLjava/util/TimeZone;)Z

    .line 761
    sget p2, Lcom/zui/gallery/exif/ExifInterface;->TAG_ORIENTATION:I

    const/4 p3, 0x1

    .line 762
    invoke-static {p3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p3

    .line 761
    invoke-virtual {p1, p2, p3}, Lcom/zui/gallery/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/zui/gallery/exif/ExifTag;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/zui/gallery/exif/ExifInterface;->setTag(Lcom/zui/gallery/exif/ExifTag;)Lcom/zui/gallery/exif/ExifTag;

    .line 764
    invoke-virtual {p1}, Lcom/zui/gallery/exif/ExifInterface;->removeCompressedThumbnail()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 4

    .line 634
    iget-object p1, p0, Lcom/zui/gallery/ui/mosaic/MosaicActivity$SaveTask;->this$0:Lcom/zui/gallery/ui/mosaic/MosaicActivity;

    invoke-static {p1}, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->access$900(Lcom/zui/gallery/ui/mosaic/MosaicActivity;)Lcom/zui/gallery/ui/mosaic/MosaicView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/gallery/ui/mosaic/MosaicView;->saveBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    const/4 v1, 0x0

    .line 638
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/zui/gallery/ui/mosaic/MosaicActivity$SaveTask;->this$0:Lcom/zui/gallery/ui/mosaic/MosaicActivity;

    invoke-static {v3}, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->access$1000(Lcom/zui/gallery/ui/mosaic/MosaicActivity;)Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 639
    :try_start_1
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p1, v1, v3, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 646
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catchall_0
    move-exception p1

    move-object v1, v2

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v1, v2

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception v0

    :goto_0
    :try_start_3
    const-string v2, "MosaicActivity"

    const-string v3, "save exception "

    .line 641
    invoke-static {v2, v3, v0}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 v0, 0x0

    if-eqz v1, :cond_0

    .line 646
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 651
    :catch_2
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/zui/gallery/ui/mosaic/MosaicActivity$SaveTask;->this$0:Lcom/zui/gallery/ui/mosaic/MosaicActivity;

    invoke-static {v1}, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->access$1000(Lcom/zui/gallery/ui/mosaic/MosaicActivity;)Ljava/io/File;

    move-result-object v1

    const/16 v2, 0x5a

    invoke-virtual {p0, v1, p1, v2}, Lcom/zui/gallery/ui/mosaic/MosaicActivity$SaveTask;->setExifInfo(Ljava/io/File;Landroid/graphics/Bitmap;I)V

    goto :goto_3

    :goto_2
    if-eqz v1, :cond_1

    .line 646
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 650
    :catch_3
    :cond_1
    throw p1

    .line 653
    :cond_2
    :goto_3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 622
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/zui/gallery/ui/mosaic/MosaicActivity$SaveTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public getExifData(Landroid/net/Uri;)Lcom/zui/gallery/exif/ExifInterface;
    .locals 3

    .line 657
    new-instance v0, Lcom/zui/gallery/exif/ExifInterface;

    invoke-direct {v0}, Lcom/zui/gallery/exif/ExifInterface;-><init>()V

    .line 658
    iget-object v1, p0, Lcom/zui/gallery/ui/mosaic/MosaicActivity$SaveTask;->this$0:Lcom/zui/gallery/ui/mosaic/MosaicActivity;

    invoke-static {v1}, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->access$100(Lcom/zui/gallery/ui/mosaic/MosaicActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 660
    invoke-static {p1}, Lcom/zui/gallery/filtershow/cache/ImageLoader;->getMimeType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    if-eqz v1, :cond_1

    const-string v2, "image/jpeg"

    .line 662
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 665
    :try_start_0
    iget-object v2, p0, Lcom/zui/gallery/ui/mosaic/MosaicActivity$SaveTask;->this$0:Lcom/zui/gallery/ui/mosaic/MosaicActivity;

    invoke-static {v2}, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->access$100(Lcom/zui/gallery/ui/mosaic/MosaicActivity;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 666
    invoke-virtual {v0, v1}, Lcom/zui/gallery/exif/ExifInterface;->readExif(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 672
    invoke-static {v1}, Lcom/zui/gallery/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 673
    throw p1

    .line 672
    :catch_0
    :goto_0
    invoke-static {v1}, Lcom/zui/gallery/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    :cond_1
    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 0

    .line 769
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 622
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/zui/gallery/ui/mosaic/MosaicActivity$SaveTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .line 626
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 627
    iget-object v0, p0, Lcom/zui/gallery/ui/mosaic/MosaicActivity$SaveTask;->this$0:Lcom/zui/gallery/ui/mosaic/MosaicActivity;

    const v1, 0x7f100221

    invoke-virtual {v0, v1}, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->startLoadingIndicator(I)V

    return-void
.end method

.method public putExifData(Ljava/io/File;Lcom/zui/gallery/exif/ExifInterface;Landroid/graphics/Bitmap;I)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 683
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/zui/gallery/exif/ExifInterface;->getExifWriterStream(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 684
    :try_start_1
    sget-object p2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    if-lez p4, :cond_0

    goto :goto_0

    :cond_0
    move p4, v0

    :goto_0
    invoke-virtual {p3, p2, p4, p1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 686
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 687
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 695
    invoke-static {v1}, Lcom/zui/gallery/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_3

    :catchall_0
    move-exception p2

    move-object v1, p1

    goto :goto_1

    :catch_0
    move-object v1, p1

    goto :goto_2

    :catchall_1
    move-exception p2

    :goto_1
    invoke-static {v1}, Lcom/zui/gallery/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 696
    throw p2

    .line 695
    :catch_1
    :goto_2
    invoke-static {v1}, Lcom/zui/gallery/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    const/4 v0, 0x0

    :goto_3
    return v0
.end method

.method public setExifInfo(Ljava/io/File;Landroid/graphics/Bitmap;I)V
    .locals 3

    .line 748
    iget-object v0, p0, Lcom/zui/gallery/ui/mosaic/MosaicActivity$SaveTask;->this$0:Lcom/zui/gallery/ui/mosaic/MosaicActivity;

    iget-object v0, v0, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Lcom/zui/gallery/ui/mosaic/MosaicActivity$SaveTask;->getExifData(Landroid/net/Uri;)Lcom/zui/gallery/exif/ExifInterface;

    move-result-object v0

    .line 749
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 750
    invoke-direct {p0, v0, v1, v2}, Lcom/zui/gallery/ui/mosaic/MosaicActivity$SaveTask;->updateExifData(Lcom/zui/gallery/exif/ExifInterface;J)V

    .line 751
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/zui/gallery/ui/mosaic/MosaicActivity$SaveTask;->putExifData(Ljava/io/File;Lcom/zui/gallery/exif/ExifInterface;Landroid/graphics/Bitmap;I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 753
    iget-object p1, p0, Lcom/zui/gallery/ui/mosaic/MosaicActivity$SaveTask;->this$0:Lcom/zui/gallery/ui/mosaic/MosaicActivity;

    invoke-static {p1}, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->access$100(Lcom/zui/gallery/ui/mosaic/MosaicActivity;)Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/zui/gallery/ui/mosaic/MosaicActivity$SaveTask;->this$0:Lcom/zui/gallery/ui/mosaic/MosaicActivity;

    invoke-static {p2}, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->access$1000(Lcom/zui/gallery/ui/mosaic/MosaicActivity;)Ljava/io/File;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/zui/gallery/ui/mosaic/MosaicActivity$SaveTask;->requestScanFile(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
