.class Lcom/zui/gallery/data/CloudImage$RegionDecoderJob;
.super Ljava/lang/Object;
.source "CloudImage.java"

# interfaces
.implements Lcom/zui/gallery/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/data/CloudImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RegionDecoderJob"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/zui/gallery/util/ThreadPool$Job<",
        "Landroid/graphics/BitmapRegionDecoder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/data/CloudImage;


# direct methods
.method private constructor <init>(Lcom/zui/gallery/data/CloudImage;)V
    .locals 0

    .line 317
    iput-object p1, p0, Lcom/zui/gallery/data/CloudImage$RegionDecoderJob;->this$0:Lcom/zui/gallery/data/CloudImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zui/gallery/data/CloudImage;Lcom/zui/gallery/data/CloudImage$1;)V
    .locals 0

    .line 317
    invoke-direct {p0, p1}, Lcom/zui/gallery/data/CloudImage$RegionDecoderJob;-><init>(Lcom/zui/gallery/data/CloudImage;)V

    return-void
.end method


# virtual methods
.method public run(Lcom/zui/gallery/util/ThreadPool$JobContext;)Landroid/graphics/BitmapRegionDecoder;
    .locals 3

    .line 320
    iget-object v0, p0, Lcom/zui/gallery/data/CloudImage$RegionDecoderJob;->this$0:Lcom/zui/gallery/data/CloudImage;

    const/4 v1, -0x1

    invoke-static {v0, p1, v1}, Lcom/zui/gallery/data/CloudImage;->access$100(Lcom/zui/gallery/data/CloudImage;Lcom/zui/gallery/util/ThreadPool$JobContext;I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 321
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/data/CloudImage$RegionDecoderJob;->this$0:Lcom/zui/gallery/data/CloudImage;

    .line 322
    invoke-static {v0}, Lcom/zui/gallery/data/CloudImage;->access$200(Lcom/zui/gallery/data/CloudImage;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    const/4 v1, 0x0

    .line 321
    invoke-static {p1, v0, v1}, Lcom/zui/gallery/decode/DecodeUtils;->createBitmapRegionDecoder(Lcom/zui/gallery/util/ThreadPool$JobContext;Ljava/io/FileDescriptor;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object p1

    .line 324
    iget-object v0, p0, Lcom/zui/gallery/data/CloudImage$RegionDecoderJob;->this$0:Lcom/zui/gallery/data/CloudImage;

    invoke-static {v0}, Lcom/zui/gallery/data/CloudImage;->access$300(Lcom/zui/gallery/data/CloudImage;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    .line 325
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 326
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 327
    iget-object v1, p0, Lcom/zui/gallery/data/CloudImage$RegionDecoderJob;->this$0:Lcom/zui/gallery/data/CloudImage;

    invoke-static {v1}, Lcom/zui/gallery/data/CloudImage;->access$400(Lcom/zui/gallery/data/CloudImage;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 328
    iget-object v1, p0, Lcom/zui/gallery/data/CloudImage$RegionDecoderJob;->this$0:Lcom/zui/gallery/data/CloudImage;

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-static {v1, v2}, Lcom/zui/gallery/data/CloudImage;->access$502(Lcom/zui/gallery/data/CloudImage;I)I

    .line 329
    iget-object v1, p0, Lcom/zui/gallery/data/CloudImage$RegionDecoderJob;->this$0:Lcom/zui/gallery/data/CloudImage;

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v1, v0}, Lcom/zui/gallery/data/CloudImage;->access$602(Lcom/zui/gallery/data/CloudImage;I)I

    goto :goto_0

    .line 331
    :cond_1
    iget-object v0, p0, Lcom/zui/gallery/data/CloudImage$RegionDecoderJob;->this$0:Lcom/zui/gallery/data/CloudImage;

    invoke-virtual {p1}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I

    move-result v1

    invoke-static {v0, v1}, Lcom/zui/gallery/data/CloudImage;->access$502(Lcom/zui/gallery/data/CloudImage;I)I

    .line 332
    iget-object v0, p0, Lcom/zui/gallery/data/CloudImage$RegionDecoderJob;->this$0:Lcom/zui/gallery/data/CloudImage;

    invoke-virtual {p1}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/zui/gallery/data/CloudImage;->access$602(Lcom/zui/gallery/data/CloudImage;I)I

    :goto_0
    return-object p1
.end method

.method public bridge synthetic run(Lcom/zui/gallery/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 0

    .line 317
    invoke-virtual {p0, p1}, Lcom/zui/gallery/data/CloudImage$RegionDecoderJob;->run(Lcom/zui/gallery/util/ThreadPool$JobContext;)Landroid/graphics/BitmapRegionDecoder;

    move-result-object p1

    return-object p1
.end method
