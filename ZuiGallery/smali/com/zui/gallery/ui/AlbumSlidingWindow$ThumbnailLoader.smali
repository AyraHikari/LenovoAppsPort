.class Lcom/zui/gallery/ui/AlbumSlidingWindow$ThumbnailLoader;
.super Lcom/zui/gallery/ui/BitmapLoader;
.source "AlbumSlidingWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/ui/AlbumSlidingWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ThumbnailLoader"
.end annotation


# instance fields
.field private mIsContinuesCover:Z

.field private final mItem:Lcom/zui/gallery/data/MediaItem;

.field private final mSlotIndex:I

.field private texture:Lcom/zui/gallery/glrenderer/BitmapTexture;

.field final synthetic this$0:Lcom/zui/gallery/ui/AlbumSlidingWindow;


# direct methods
.method public constructor <init>(Lcom/zui/gallery/ui/AlbumSlidingWindow;ILcom/zui/gallery/data/MediaItem;Z)V
    .locals 0

    .line 435
    iput-object p1, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow$ThumbnailLoader;->this$0:Lcom/zui/gallery/ui/AlbumSlidingWindow;

    invoke-direct {p0}, Lcom/zui/gallery/ui/BitmapLoader;-><init>()V

    .line 436
    iput p2, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow$ThumbnailLoader;->mSlotIndex:I

    .line 437
    iput-object p3, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow$ThumbnailLoader;->mItem:Lcom/zui/gallery/data/MediaItem;

    if-nez p3, :cond_0

    return-void

    .line 444
    :cond_0
    iput-boolean p4, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow$ThumbnailLoader;->mIsContinuesCover:Z

    return-void
.end method

.method private newTexture(Landroid/graphics/Bitmap;)Z
    .locals 3

    .line 503
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow$ThumbnailLoader;->this$0:Lcom/zui/gallery/ui/AlbumSlidingWindow;

    invoke-static {v0}, Lcom/zui/gallery/ui/AlbumSlidingWindow;->access$100(Lcom/zui/gallery/ui/AlbumSlidingWindow;)[Lcom/zui/gallery/ui/AlbumSlidingWindow$AlbumEntry;

    move-result-object v0

    iget v1, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow$ThumbnailLoader;->mSlotIndex:I

    iget-object v2, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow$ThumbnailLoader;->this$0:Lcom/zui/gallery/ui/AlbumSlidingWindow;

    invoke-static {v2}, Lcom/zui/gallery/ui/AlbumSlidingWindow;->access$100(Lcom/zui/gallery/ui/AlbumSlidingWindow;)[Lcom/zui/gallery/ui/AlbumSlidingWindow$AlbumEntry;

    move-result-object v2

    array-length v2, v2

    rem-int/2addr v1, v2

    aget-object v0, v0, v1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eqz p1, :cond_2

    .line 514
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 519
    :cond_1
    new-instance v0, Lcom/zui/gallery/glrenderer/BitmapTexture;

    invoke-direct {v0, p1}, Lcom/zui/gallery/glrenderer/BitmapTexture;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow$ThumbnailLoader;->texture:Lcom/zui/gallery/glrenderer/BitmapTexture;

    .line 520
    invoke-virtual {v0, v1}, Lcom/zui/gallery/glrenderer/BitmapTexture;->setOpaque(Z)V

    const/4 p1, 0x1

    return p1

    .line 515
    :cond_2
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "- ERROR mSlotIndex:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow$ThumbnailLoader;->mSlotIndex:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ": bitmap is null!"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AlbumSlidingWindow"

    invoke-static {v0, p1}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method


# virtual methods
.method protected onLoadComplete(Landroid/graphics/Bitmap;)V
    .locals 2

    const-wide/16 v0, 0xf

    .line 475
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 477
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    const-string v0, "AlbumSlidingWindow"

    if-eqz p1, :cond_3

    .line 482
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 488
    :cond_0
    iget-boolean v1, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow$ThumbnailLoader;->mIsContinuesCover:Z

    if-eqz v1, :cond_1

    .line 489
    iget-object v1, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow$ThumbnailLoader;->mItem:Lcom/zui/gallery/data/MediaItem;

    invoke-virtual {v1}, Lcom/zui/gallery/data/MediaItem;->getRotation()I

    move-result v1

    invoke-static {p1, v1}, Lcom/zui/gallery/common/BitmapUtils;->createContinuesCover(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 493
    :cond_1
    invoke-direct {p0, p1}, Lcom/zui/gallery/ui/AlbumSlidingWindow$ThumbnailLoader;->newTexture(Landroid/graphics/Bitmap;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 494
    iget-object p1, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow$ThumbnailLoader;->this$0:Lcom/zui/gallery/ui/AlbumSlidingWindow;

    invoke-static {p1}, Lcom/zui/gallery/ui/AlbumSlidingWindow;->access$400(Lcom/zui/gallery/ui/AlbumSlidingWindow;)Lcom/zui/gallery/ui/SynchronizedHandler;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lcom/zui/gallery/ui/SynchronizedHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    :cond_2
    const-string p1, "create texture failed"

    .line 496
    invoke-static {v0, p1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    .line 483
    :cond_3
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- ERROR mSlotIndex:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow$ThumbnailLoader;->mSlotIndex:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ": bitmap is null! or bitmap is recycle"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected submitBitmapTask(Lcom/zui/gallery/util/FutureListener;)Lcom/zui/gallery/util/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zui/gallery/util/FutureListener<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/zui/gallery/util/Future<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 461
    iget-object p1, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow$ThumbnailLoader;->this$0:Lcom/zui/gallery/ui/AlbumSlidingWindow;

    invoke-static {p1}, Lcom/zui/gallery/ui/AlbumSlidingWindow;->access$100(Lcom/zui/gallery/ui/AlbumSlidingWindow;)[Lcom/zui/gallery/ui/AlbumSlidingWindow$AlbumEntry;

    move-result-object p1

    iget v0, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow$ThumbnailLoader;->mSlotIndex:I

    iget-object v1, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow$ThumbnailLoader;->this$0:Lcom/zui/gallery/ui/AlbumSlidingWindow;

    invoke-static {v1}, Lcom/zui/gallery/ui/AlbumSlidingWindow;->access$100(Lcom/zui/gallery/ui/AlbumSlidingWindow;)[Lcom/zui/gallery/ui/AlbumSlidingWindow$AlbumEntry;

    move-result-object v1

    array-length v1, v1

    rem-int/2addr v0, v1

    aget-object p1, p1, v0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 467
    :cond_0
    iget-object p1, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow$ThumbnailLoader;->this$0:Lcom/zui/gallery/ui/AlbumSlidingWindow;

    invoke-static {p1}, Lcom/zui/gallery/ui/AlbumSlidingWindow;->access$200(Lcom/zui/gallery/ui/AlbumSlidingWindow;)Lcom/zui/gallery/app/AlbumDataLoader;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/gallery/app/AlbumDataLoader;->isPanoAlbum()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x5

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    .line 469
    :goto_0
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow$ThumbnailLoader;->this$0:Lcom/zui/gallery/ui/AlbumSlidingWindow;

    invoke-static {v0}, Lcom/zui/gallery/ui/AlbumSlidingWindow;->access$300(Lcom/zui/gallery/ui/AlbumSlidingWindow;)Lcom/zui/gallery/util/JobLimiter;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow$ThumbnailLoader;->mItem:Lcom/zui/gallery/data/MediaItem;

    invoke-virtual {v1, p1}, Lcom/zui/gallery/data/MediaItem;->requestImage(I)Lcom/zui/gallery/util/ThreadPool$Job;

    move-result-object p1

    invoke-virtual {v0, p1, p0}, Lcom/zui/gallery/util/JobLimiter;->submit(Lcom/zui/gallery/util/ThreadPool$Job;Lcom/zui/gallery/util/FutureListener;)Lcom/zui/gallery/util/Future;

    move-result-object p1

    return-object p1
.end method

.method public updateEntry()V
    .locals 3

    .line 528
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow$ThumbnailLoader;->this$0:Lcom/zui/gallery/ui/AlbumSlidingWindow;

    invoke-static {v0}, Lcom/zui/gallery/ui/AlbumSlidingWindow;->access$100(Lcom/zui/gallery/ui/AlbumSlidingWindow;)[Lcom/zui/gallery/ui/AlbumSlidingWindow$AlbumEntry;

    move-result-object v0

    iget v1, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow$ThumbnailLoader;->mSlotIndex:I

    iget-object v2, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow$ThumbnailLoader;->this$0:Lcom/zui/gallery/ui/AlbumSlidingWindow;

    invoke-static {v2}, Lcom/zui/gallery/ui/AlbumSlidingWindow;->access$100(Lcom/zui/gallery/ui/AlbumSlidingWindow;)[Lcom/zui/gallery/ui/AlbumSlidingWindow$AlbumEntry;

    move-result-object v2

    array-length v2, v2

    rem-int/2addr v1, v2

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    return-void

    .line 532
    :cond_0
    iget-object v1, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow$ThumbnailLoader;->texture:Lcom/zui/gallery/glrenderer/BitmapTexture;

    iput-object v1, v0, Lcom/zui/gallery/ui/AlbumSlidingWindow$AlbumEntry;->bitmapTexture:Lcom/zui/gallery/glrenderer/BitmapTexture;

    .line 533
    iget-object v1, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow$ThumbnailLoader;->texture:Lcom/zui/gallery/glrenderer/BitmapTexture;

    iput-object v1, v0, Lcom/zui/gallery/ui/AlbumSlidingWindow$AlbumEntry;->content:Lcom/zui/gallery/glrenderer/Texture;

    .line 535
    iget-object v1, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow$ThumbnailLoader;->this$0:Lcom/zui/gallery/ui/AlbumSlidingWindow;

    iget v2, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow$ThumbnailLoader;->mSlotIndex:I

    invoke-virtual {v1, v2}, Lcom/zui/gallery/ui/AlbumSlidingWindow;->isActiveSlot(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 536
    iget-object v1, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow$ThumbnailLoader;->this$0:Lcom/zui/gallery/ui/AlbumSlidingWindow;

    invoke-static {v1}, Lcom/zui/gallery/ui/AlbumSlidingWindow;->access$500(Lcom/zui/gallery/ui/AlbumSlidingWindow;)Lcom/zui/gallery/glrenderer/TextureUploader;

    move-result-object v1

    iget-object v0, v0, Lcom/zui/gallery/ui/AlbumSlidingWindow$AlbumEntry;->bitmapTexture:Lcom/zui/gallery/glrenderer/BitmapTexture;

    invoke-virtual {v1, v0}, Lcom/zui/gallery/glrenderer/TextureUploader;->addFgTexture(Lcom/zui/gallery/glrenderer/UploadedTexture;)V

    .line 537
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow$ThumbnailLoader;->this$0:Lcom/zui/gallery/ui/AlbumSlidingWindow;

    invoke-static {v0}, Lcom/zui/gallery/ui/AlbumSlidingWindow;->access$606(Lcom/zui/gallery/ui/AlbumSlidingWindow;)I

    .line 538
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow$ThumbnailLoader;->this$0:Lcom/zui/gallery/ui/AlbumSlidingWindow;

    invoke-static {v0}, Lcom/zui/gallery/ui/AlbumSlidingWindow;->access$600(Lcom/zui/gallery/ui/AlbumSlidingWindow;)I

    move-result v0

    if-nez v0, :cond_1

    .line 539
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow$ThumbnailLoader;->this$0:Lcom/zui/gallery/ui/AlbumSlidingWindow;

    invoke-static {v0}, Lcom/zui/gallery/ui/AlbumSlidingWindow;->access$700(Lcom/zui/gallery/ui/AlbumSlidingWindow;)V

    .line 540
    :cond_1
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow$ThumbnailLoader;->this$0:Lcom/zui/gallery/ui/AlbumSlidingWindow;

    invoke-static {v0}, Lcom/zui/gallery/ui/AlbumSlidingWindow;->access$800(Lcom/zui/gallery/ui/AlbumSlidingWindow;)Lcom/zui/gallery/ui/AlbumSlidingWindow$Listener;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 541
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow$ThumbnailLoader;->this$0:Lcom/zui/gallery/ui/AlbumSlidingWindow;

    invoke-static {v0}, Lcom/zui/gallery/ui/AlbumSlidingWindow;->access$800(Lcom/zui/gallery/ui/AlbumSlidingWindow;)Lcom/zui/gallery/ui/AlbumSlidingWindow$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/zui/gallery/ui/AlbumSlidingWindow$Listener;->onContentChanged()V

    goto :goto_0

    .line 546
    :cond_2
    iget-object v1, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow$ThumbnailLoader;->this$0:Lcom/zui/gallery/ui/AlbumSlidingWindow;

    invoke-static {v1}, Lcom/zui/gallery/ui/AlbumSlidingWindow;->access$500(Lcom/zui/gallery/ui/AlbumSlidingWindow;)Lcom/zui/gallery/glrenderer/TextureUploader;

    move-result-object v1

    iget-object v0, v0, Lcom/zui/gallery/ui/AlbumSlidingWindow$AlbumEntry;->bitmapTexture:Lcom/zui/gallery/glrenderer/BitmapTexture;

    invoke-virtual {v1, v0}, Lcom/zui/gallery/glrenderer/TextureUploader;->addBgTexture(Lcom/zui/gallery/glrenderer/UploadedTexture;)V

    :cond_3
    :goto_0
    return-void
.end method
