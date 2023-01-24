.class public Lcom/zui/gallery/decode/LocalVideoRequest;
.super Lcom/zui/gallery/cache/ImageCacheRequest;
.source "LocalVideoRequest.java"


# instance fields
.field private mLocalFilePath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/zui/gallery/app/GalleryApp;Lcom/zui/gallery/data/Path;JILjava/lang/String;)V
    .locals 8

    const/4 v0, 0x1

    if-ne p5, v0, :cond_0

    const/16 v0, 0x3c0

    goto :goto_0

    .line 19
    :cond_0
    invoke-static {p5}, Lcom/zui/gallery/data/MediaItem;->getTargetSize(I)I

    move-result v0

    :goto_0
    move v7, v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move v6, p5

    .line 18
    invoke-direct/range {v1 .. v7}, Lcom/zui/gallery/cache/ImageCacheRequest;-><init>(Lcom/zui/gallery/app/GalleryApp;Lcom/zui/gallery/data/Path;JII)V

    .line 21
    iput-object p6, p0, Lcom/zui/gallery/decode/LocalVideoRequest;->mLocalFilePath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onDecodeOriginal(Lcom/zui/gallery/util/ThreadPool$JobContext;I)Landroid/graphics/Bitmap;
    .locals 0

    .line 26
    iget-object p2, p0, Lcom/zui/gallery/decode/LocalVideoRequest;->mLocalFilePath:Ljava/lang/String;

    invoke-static {p2}, Lcom/zui/gallery/common/BitmapUtils;->createVideoThumbnail(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 27
    invoke-interface {p1}, Lcom/zui/gallery/util/ThreadPool$JobContext;->isCancelled()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    return-object p2

    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    .line 29
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method
