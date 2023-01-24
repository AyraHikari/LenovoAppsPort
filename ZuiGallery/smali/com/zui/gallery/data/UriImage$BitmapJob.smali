.class Lcom/zui/gallery/data/UriImage$BitmapJob;
.super Ljava/lang/Object;
.source "UriImage.java"

# interfaces
.implements Lcom/zui/gallery/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/data/UriImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BitmapJob"
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
.field private mType:I

.field final synthetic this$0:Lcom/zui/gallery/data/UriImage;


# direct methods
.method protected constructor <init>(Lcom/zui/gallery/data/UriImage;I)V
    .locals 0

    .line 206
    iput-object p1, p0, Lcom/zui/gallery/data/UriImage$BitmapJob;->this$0:Lcom/zui/gallery/data/UriImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    iput p2, p0, Lcom/zui/gallery/data/UriImage$BitmapJob;->mType:I

    return-void
.end method


# virtual methods
.method public run(Lcom/zui/gallery/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;
    .locals 5

    .line 212
    iget-object v0, p0, Lcom/zui/gallery/data/UriImage$BitmapJob;->this$0:Lcom/zui/gallery/data/UriImage;

    invoke-static {v0, p1}, Lcom/zui/gallery/data/UriImage;->access$100(Lcom/zui/gallery/data/UriImage;Lcom/zui/gallery/util/ThreadPool$JobContext;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 213
    :cond_0
    iget v0, p0, Lcom/zui/gallery/data/UriImage$BitmapJob;->mType:I

    invoke-static {v0}, Lcom/zui/gallery/data/MediaItem;->getTargetSize(I)I

    move-result v0

    .line 214
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 215
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v3, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 216
    iget-object v3, p0, Lcom/zui/gallery/data/UriImage$BitmapJob;->this$0:Lcom/zui/gallery/data/UriImage;

    .line 217
    invoke-static {v3}, Lcom/zui/gallery/data/UriImage;->access$200(Lcom/zui/gallery/data/UriImage;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    iget v4, p0, Lcom/zui/gallery/data/UriImage$BitmapJob;->mType:I

    .line 216
    invoke-static {p1, v3, v2, v0, v4}, Lcom/zui/gallery/decode/DecodeUtils;->decodeThumbnail(Lcom/zui/gallery/util/ThreadPool$JobContext;Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;II)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 219
    invoke-interface {p1}, Lcom/zui/gallery/util/ThreadPool$JobContext;->isCancelled()Z

    move-result p1

    if-nez p1, :cond_3

    if-nez v2, :cond_1

    goto :goto_1

    .line 223
    :cond_1
    iget p1, p0, Lcom/zui/gallery/data/UriImage$BitmapJob;->mType:I

    const/4 v1, 0x2

    const/4 v3, 0x1

    if-ne p1, v1, :cond_2

    .line 224
    invoke-static {v2, v0, v3}, Lcom/zui/gallery/common/BitmapUtils;->resizeAndCropCenter(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0

    .line 226
    :cond_2
    invoke-static {v2, v0, v3}, Lcom/zui/gallery/common/BitmapUtils;->resizeDownBySideLength(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object p1

    :goto_0
    return-object p1

    :cond_3
    :goto_1
    return-object v1
.end method

.method public bridge synthetic run(Lcom/zui/gallery/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 0

    .line 203
    invoke-virtual {p0, p1}, Lcom/zui/gallery/data/UriImage$BitmapJob;->run(Lcom/zui/gallery/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method
