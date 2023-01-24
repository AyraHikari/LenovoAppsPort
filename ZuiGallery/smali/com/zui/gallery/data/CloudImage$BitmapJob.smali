.class Lcom/zui/gallery/data/CloudImage$BitmapJob;
.super Lcom/zui/gallery/cache/ImageCacheRequest;
.source "CloudImage.java"

# interfaces
.implements Lcom/zui/gallery/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/data/CloudImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BitmapJob"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/zui/gallery/cache/ImageCacheRequest;",
        "Lcom/zui/gallery/util/ThreadPool$Job<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private mType:I

.field final synthetic this$0:Lcom/zui/gallery/data/CloudImage;


# direct methods
.method public constructor <init>(Lcom/zui/gallery/data/CloudImage;Lcom/zui/gallery/app/GalleryApp;Lcom/zui/gallery/data/Path;JII)V
    .locals 7

    .line 346
    iput-object p1, p0, Lcom/zui/gallery/data/CloudImage$BitmapJob;->this$0:Lcom/zui/gallery/data/CloudImage;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-wide v3, p4

    move v5, p6

    move v6, p7

    .line 347
    invoke-direct/range {v0 .. v6}, Lcom/zui/gallery/cache/ImageCacheRequest;-><init>(Lcom/zui/gallery/app/GalleryApp;Lcom/zui/gallery/data/Path;JII)V

    .line 348
    iput p6, p0, Lcom/zui/gallery/data/CloudImage$BitmapJob;->mType:I

    return-void
.end method


# virtual methods
.method public onDecodeOriginal(Lcom/zui/gallery/util/ThreadPool$JobContext;I)Landroid/graphics/Bitmap;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public run(Lcom/zui/gallery/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;
    .locals 5

    .line 353
    iget-object v0, p0, Lcom/zui/gallery/data/CloudImage$BitmapJob;->this$0:Lcom/zui/gallery/data/CloudImage;

    iget v1, p0, Lcom/zui/gallery/data/CloudImage$BitmapJob;->mType:I

    invoke-static {v0, p1, v1}, Lcom/zui/gallery/data/CloudImage;->access$100(Lcom/zui/gallery/data/CloudImage;Lcom/zui/gallery/util/ThreadPool$JobContext;I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 354
    :cond_0
    iget v0, p0, Lcom/zui/gallery/data/CloudImage$BitmapJob;->mType:I

    invoke-static {v0}, Lcom/zui/gallery/data/MediaItem;->getTargetSize(I)I

    move-result v0

    .line 355
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 356
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v3, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 357
    iget-object v3, p0, Lcom/zui/gallery/data/CloudImage$BitmapJob;->this$0:Lcom/zui/gallery/data/CloudImage;

    .line 358
    invoke-static {v3}, Lcom/zui/gallery/data/CloudImage;->access$200(Lcom/zui/gallery/data/CloudImage;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    iget v4, p0, Lcom/zui/gallery/data/CloudImage$BitmapJob;->mType:I

    .line 357
    invoke-static {p1, v3, v2, v0, v4}, Lcom/zui/gallery/decode/DecodeUtils;->decodeThumbnail(Lcom/zui/gallery/util/ThreadPool$JobContext;Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;II)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 360
    invoke-interface {p1}, Lcom/zui/gallery/util/ThreadPool$JobContext;->isCancelled()Z

    move-result p1

    if-nez p1, :cond_4

    if-nez v2, :cond_1

    goto :goto_2

    .line 364
    :cond_1
    iget p1, p0, Lcom/zui/gallery/data/CloudImage$BitmapJob;->mType:I

    const/4 v1, 0x2

    const/4 v3, 0x1

    if-eq p1, v1, :cond_3

    const/4 v1, 0x3

    if-ne p1, v1, :cond_2

    goto :goto_0

    .line 367
    :cond_2
    invoke-static {v2, v0, v3}, Lcom/zui/gallery/common/BitmapUtils;->resizeDownBySideLength(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_1

    .line 365
    :cond_3
    :goto_0
    invoke-static {v2, v0, v3}, Lcom/zui/gallery/common/BitmapUtils;->resizeAndCropCenter(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object p1

    :goto_1
    return-object p1

    :cond_4
    :goto_2
    return-object v1
.end method

.method public bridge synthetic run(Lcom/zui/gallery/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 0

    .line 339
    invoke-virtual {p0, p1}, Lcom/zui/gallery/data/CloudImage$BitmapJob;->run(Lcom/zui/gallery/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method
