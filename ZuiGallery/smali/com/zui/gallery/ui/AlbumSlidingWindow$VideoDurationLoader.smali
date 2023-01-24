.class Lcom/zui/gallery/ui/AlbumSlidingWindow$VideoDurationLoader;
.super Lcom/zui/gallery/ui/BitmapLoader;
.source "AlbumSlidingWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/ui/AlbumSlidingWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VideoDurationLoader"
.end annotation


# instance fields
.field private final mDuration:I

.field private final mSlotIndex:I

.field final synthetic this$0:Lcom/zui/gallery/ui/AlbumSlidingWindow;


# direct methods
.method public constructor <init>(Lcom/zui/gallery/ui/AlbumSlidingWindow;II)V
    .locals 0

    .line 563
    iput-object p1, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow$VideoDurationLoader;->this$0:Lcom/zui/gallery/ui/AlbumSlidingWindow;

    invoke-direct {p0}, Lcom/zui/gallery/ui/BitmapLoader;-><init>()V

    .line 564
    iput p2, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow$VideoDurationLoader;->mSlotIndex:I

    .line 565
    iput p3, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow$VideoDurationLoader;->mDuration:I

    return-void
.end method


# virtual methods
.method protected onLoadComplete(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 575
    iget-object p1, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow$VideoDurationLoader;->this$0:Lcom/zui/gallery/ui/AlbumSlidingWindow;

    invoke-static {p1}, Lcom/zui/gallery/ui/AlbumSlidingWindow;->access$400(Lcom/zui/gallery/ui/AlbumSlidingWindow;)Lcom/zui/gallery/ui/SynchronizedHandler;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v0, p0}, Lcom/zui/gallery/ui/SynchronizedHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 576
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method protected submitBitmapTask(Lcom/zui/gallery/util/FutureListener;)Lcom/zui/gallery/util/Future;
    .locals 4
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

    .line 570
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow$VideoDurationLoader;->this$0:Lcom/zui/gallery/ui/AlbumSlidingWindow;

    invoke-static {v0}, Lcom/zui/gallery/ui/AlbumSlidingWindow;->access$300(Lcom/zui/gallery/ui/AlbumSlidingWindow;)Lcom/zui/gallery/util/JobLimiter;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow$VideoDurationLoader;->this$0:Lcom/zui/gallery/ui/AlbumSlidingWindow;

    invoke-static {v1}, Lcom/zui/gallery/ui/AlbumSlidingWindow;->access$900(Lcom/zui/gallery/ui/AlbumSlidingWindow;)Lcom/zui/gallery/ui/ContinuousShotsLabelMaker;

    move-result-object v1

    iget v2, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow$VideoDurationLoader;->mDuration:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/zui/gallery/ui/ContinuousShotsLabelMaker;->requestLabel(II)Lcom/zui/gallery/util/ThreadPool$Job;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/zui/gallery/util/JobLimiter;->submit(Lcom/zui/gallery/util/ThreadPool$Job;Lcom/zui/gallery/util/FutureListener;)Lcom/zui/gallery/util/Future;

    move-result-object p1

    return-object p1
.end method

.method public updateEntry()V
    .locals 4

    .line 580
    invoke-virtual {p0}, Lcom/zui/gallery/ui/AlbumSlidingWindow$VideoDurationLoader;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 585
    :cond_0
    iget-object v1, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow$VideoDurationLoader;->this$0:Lcom/zui/gallery/ui/AlbumSlidingWindow;

    invoke-static {v1}, Lcom/zui/gallery/ui/AlbumSlidingWindow;->access$100(Lcom/zui/gallery/ui/AlbumSlidingWindow;)[Lcom/zui/gallery/ui/AlbumSlidingWindow$AlbumEntry;

    move-result-object v1

    iget v2, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow$VideoDurationLoader;->mSlotIndex:I

    iget-object v3, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow$VideoDurationLoader;->this$0:Lcom/zui/gallery/ui/AlbumSlidingWindow;

    invoke-static {v3}, Lcom/zui/gallery/ui/AlbumSlidingWindow;->access$100(Lcom/zui/gallery/ui/AlbumSlidingWindow;)[Lcom/zui/gallery/ui/AlbumSlidingWindow$AlbumEntry;

    move-result-object v3

    array-length v3, v3

    rem-int/2addr v2, v3

    aget-object v1, v1, v2

    if-nez v1, :cond_1

    .line 587
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "update videoDuration entry is empty mSlotIndex "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow$VideoDurationLoader;->mSlotIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AlbumSlidingWindow"

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 591
    :cond_1
    new-instance v2, Lcom/zui/gallery/glrenderer/BitmapTexture;

    invoke-direct {v2, v0}, Lcom/zui/gallery/glrenderer/BitmapTexture;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v2, v1, Lcom/zui/gallery/ui/AlbumSlidingWindow$AlbumEntry;->durationTexture:Lcom/zui/gallery/glrenderer/BitmapTexture;

    .line 592
    iget-object v0, v1, Lcom/zui/gallery/ui/AlbumSlidingWindow$AlbumEntry;->durationTexture:Lcom/zui/gallery/glrenderer/BitmapTexture;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/zui/gallery/glrenderer/BitmapTexture;->setOpaque(Z)V

    .line 593
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow$VideoDurationLoader;->this$0:Lcom/zui/gallery/ui/AlbumSlidingWindow;

    iget v2, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow$VideoDurationLoader;->mSlotIndex:I

    invoke-virtual {v0, v2}, Lcom/zui/gallery/ui/AlbumSlidingWindow;->isActiveSlot(I)Z

    move-result v0

    if-nez v0, :cond_3

    iget v0, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow$VideoDurationLoader;->mSlotIndex:I

    iget-object v2, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow$VideoDurationLoader;->this$0:Lcom/zui/gallery/ui/AlbumSlidingWindow;

    invoke-static {v2}, Lcom/zui/gallery/ui/AlbumSlidingWindow;->access$1000(Lcom/zui/gallery/ui/AlbumSlidingWindow;)I

    move-result v2

    if-ne v0, v2, :cond_2

    goto :goto_0

    .line 600
    :cond_2
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow$VideoDurationLoader;->this$0:Lcom/zui/gallery/ui/AlbumSlidingWindow;

    invoke-static {v0}, Lcom/zui/gallery/ui/AlbumSlidingWindow;->access$1100(Lcom/zui/gallery/ui/AlbumSlidingWindow;)Lcom/zui/gallery/glrenderer/TextureUploader;

    move-result-object v0

    iget-object v1, v1, Lcom/zui/gallery/ui/AlbumSlidingWindow$AlbumEntry;->durationTexture:Lcom/zui/gallery/glrenderer/BitmapTexture;

    invoke-virtual {v0, v1}, Lcom/zui/gallery/glrenderer/TextureUploader;->addBgTexture(Lcom/zui/gallery/glrenderer/UploadedTexture;)V

    goto :goto_1

    .line 594
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow$VideoDurationLoader;->this$0:Lcom/zui/gallery/ui/AlbumSlidingWindow;

    invoke-static {v0}, Lcom/zui/gallery/ui/AlbumSlidingWindow;->access$1100(Lcom/zui/gallery/ui/AlbumSlidingWindow;)Lcom/zui/gallery/glrenderer/TextureUploader;

    move-result-object v0

    iget-object v1, v1, Lcom/zui/gallery/ui/AlbumSlidingWindow$AlbumEntry;->durationTexture:Lcom/zui/gallery/glrenderer/BitmapTexture;

    invoke-virtual {v0, v1}, Lcom/zui/gallery/glrenderer/TextureUploader;->addFgTexture(Lcom/zui/gallery/glrenderer/UploadedTexture;)V

    .line 597
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow$VideoDurationLoader;->this$0:Lcom/zui/gallery/ui/AlbumSlidingWindow;

    invoke-static {v0}, Lcom/zui/gallery/ui/AlbumSlidingWindow;->access$800(Lcom/zui/gallery/ui/AlbumSlidingWindow;)Lcom/zui/gallery/ui/AlbumSlidingWindow$Listener;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 598
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow$VideoDurationLoader;->this$0:Lcom/zui/gallery/ui/AlbumSlidingWindow;

    invoke-static {v0}, Lcom/zui/gallery/ui/AlbumSlidingWindow;->access$800(Lcom/zui/gallery/ui/AlbumSlidingWindow;)Lcom/zui/gallery/ui/AlbumSlidingWindow$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/zui/gallery/ui/AlbumSlidingWindow$Listener;->onContentChanged()V

    :cond_4
    :goto_1
    return-void
.end method
