.class Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumLabelLoader;
.super Lcom/zui/gallery/ui/BitmapLoader;
.source "AlbumSetSlidingWindow.java"

# interfaces
.implements Lcom/zui/gallery/ui/AlbumSetSlidingWindow$EntryUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/ui/AlbumSetSlidingWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlbumLabelLoader"
.end annotation


# instance fields
.field private final mSlotIndex:I

.field private final mSourceType:I

.field private final mTitle:Ljava/lang/String;

.field private final mTotalCount:I

.field final synthetic this$0:Lcom/zui/gallery/ui/AlbumSetSlidingWindow;


# direct methods
.method public constructor <init>(Lcom/zui/gallery/ui/AlbumSetSlidingWindow;ILjava/lang/String;II)V
    .locals 0

    .line 1566
    iput-object p1, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumLabelLoader;->this$0:Lcom/zui/gallery/ui/AlbumSetSlidingWindow;

    invoke-direct {p0}, Lcom/zui/gallery/ui/BitmapLoader;-><init>()V

    .line 1567
    iput p2, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumLabelLoader;->mSlotIndex:I

    .line 1568
    iput-object p3, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumLabelLoader;->mTitle:Ljava/lang/String;

    .line 1569
    iput p4, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumLabelLoader;->mTotalCount:I

    .line 1570
    iput p5, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumLabelLoader;->mSourceType:I

    return-void
.end method


# virtual methods
.method protected onLoadComplete(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 1581
    iget-object p1, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumLabelLoader;->this$0:Lcom/zui/gallery/ui/AlbumSetSlidingWindow;

    invoke-static {p1}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->access$2300(Lcom/zui/gallery/ui/AlbumSetSlidingWindow;)Lcom/zui/gallery/ui/SynchronizedHandler;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0, p0}, Lcom/zui/gallery/ui/SynchronizedHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method protected submitBitmapTask(Lcom/zui/gallery/util/FutureListener;)Lcom/zui/gallery/util/Future;
    .locals 5
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

    .line 1575
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumLabelLoader;->this$0:Lcom/zui/gallery/ui/AlbumSetSlidingWindow;

    invoke-static {v0}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->access$2200(Lcom/zui/gallery/ui/AlbumSetSlidingWindow;)Lcom/zui/gallery/util/ThreadPool;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumLabelLoader;->this$0:Lcom/zui/gallery/ui/AlbumSetSlidingWindow;

    invoke-static {v1}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->access$2800(Lcom/zui/gallery/ui/AlbumSetSlidingWindow;)Lcom/zui/gallery/ui/AlbumLabelMaker;

    move-result-object v1

    iget-object v2, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumLabelLoader;->mTitle:Ljava/lang/String;

    iget v3, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumLabelLoader;->mTotalCount:I

    .line 1576
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumLabelLoader;->mSourceType:I

    .line 1575
    invoke-virtual {v1, v2, v3, v4}, Lcom/zui/gallery/ui/AlbumLabelMaker;->requestLabel(Ljava/lang/String;Ljava/lang/String;I)Lcom/zui/gallery/util/ThreadPool$Job;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/zui/gallery/util/ThreadPool;->submit(Lcom/zui/gallery/util/ThreadPool$Job;Lcom/zui/gallery/util/FutureListener;)Lcom/zui/gallery/util/Future;

    move-result-object p1

    return-object p1
.end method

.method public updateEntry()V
    .locals 4

    .line 1586
    invoke-virtual {p0}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumLabelLoader;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1588
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- ERROR mSlotIndex:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumLabelLoader;->mSlotIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ": bitmap is null!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AlbumSetSlidingWindow"

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1592
    :cond_0
    iget-object v1, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumLabelLoader;->this$0:Lcom/zui/gallery/ui/AlbumSetSlidingWindow;

    invoke-static {v1}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->access$2100(Lcom/zui/gallery/ui/AlbumSetSlidingWindow;)[Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    move-result-object v1

    iget v2, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumLabelLoader;->mSlotIndex:I

    iget-object v3, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumLabelLoader;->this$0:Lcom/zui/gallery/ui/AlbumSetSlidingWindow;

    invoke-static {v3}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->access$2100(Lcom/zui/gallery/ui/AlbumSetSlidingWindow;)[Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    move-result-object v3

    array-length v3, v3

    rem-int/2addr v2, v3

    aget-object v1, v1, v2

    .line 1593
    new-instance v2, Lcom/zui/gallery/glrenderer/BitmapTexture;

    invoke-direct {v2, v0}, Lcom/zui/gallery/glrenderer/BitmapTexture;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x0

    .line 1594
    invoke-virtual {v2, v0}, Lcom/zui/gallery/glrenderer/BitmapTexture;->setOpaque(Z)V

    .line 1595
    iput-object v2, v1, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelTexture:Lcom/zui/gallery/glrenderer/BitmapTexture;

    .line 1597
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumLabelLoader;->this$0:Lcom/zui/gallery/ui/AlbumSetSlidingWindow;

    iget v1, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumLabelLoader;->mSlotIndex:I

    invoke-virtual {v0, v1}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->isActiveSlot(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1598
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumLabelLoader;->this$0:Lcom/zui/gallery/ui/AlbumSetSlidingWindow;

    invoke-static {v0}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->access$2900(Lcom/zui/gallery/ui/AlbumSetSlidingWindow;)Lcom/zui/gallery/glrenderer/TextureUploader;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/zui/gallery/glrenderer/TextureUploader;->addFgTexture(Lcom/zui/gallery/glrenderer/UploadedTexture;)V

    .line 1599
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumLabelLoader;->this$0:Lcom/zui/gallery/ui/AlbumSetSlidingWindow;

    invoke-static {v0}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->access$2506(Lcom/zui/gallery/ui/AlbumSetSlidingWindow;)I

    .line 1600
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumLabelLoader;->this$0:Lcom/zui/gallery/ui/AlbumSetSlidingWindow;

    invoke-static {v0}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->access$2500(Lcom/zui/gallery/ui/AlbumSetSlidingWindow;)I

    move-result v0

    if-nez v0, :cond_1

    .line 1601
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumLabelLoader;->this$0:Lcom/zui/gallery/ui/AlbumSetSlidingWindow;

    invoke-static {v0}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->access$2600(Lcom/zui/gallery/ui/AlbumSetSlidingWindow;)V

    .line 1602
    :cond_1
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumLabelLoader;->this$0:Lcom/zui/gallery/ui/AlbumSetSlidingWindow;

    invoke-static {v0}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->access$2700(Lcom/zui/gallery/ui/AlbumSetSlidingWindow;)Lcom/zui/gallery/ui/AlbumSetSlidingWindow$Listener;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1603
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumLabelLoader;->this$0:Lcom/zui/gallery/ui/AlbumSetSlidingWindow;

    invoke-static {v0}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->access$2700(Lcom/zui/gallery/ui/AlbumSetSlidingWindow;)Lcom/zui/gallery/ui/AlbumSetSlidingWindow$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$Listener;->onContentChanged()V

    goto :goto_0

    .line 1605
    :cond_2
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumLabelLoader;->this$0:Lcom/zui/gallery/ui/AlbumSetSlidingWindow;

    invoke-static {v0}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->access$2900(Lcom/zui/gallery/ui/AlbumSetSlidingWindow;)Lcom/zui/gallery/glrenderer/TextureUploader;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/zui/gallery/glrenderer/TextureUploader;->addBgTexture(Lcom/zui/gallery/glrenderer/UploadedTexture;)V

    :cond_3
    :goto_0
    return-void
.end method
