.class Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$LocalTimeVideoDurationLoader;
.super Lcom/zui/gallery/ui/localtime/LocalTimeBitmapLoader;
.source "LocalTimeAlbumSlidingWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocalTimeVideoDurationLoader"
.end annotation


# instance fields
.field private final mDuration:I

.field private final mSlotIndex:I

.field final synthetic this$0:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;


# direct methods
.method public constructor <init>(Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;II)V
    .locals 0

    .line 1098
    iput-object p1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$LocalTimeVideoDurationLoader;->this$0:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;

    invoke-direct {p0}, Lcom/zui/gallery/ui/localtime/LocalTimeBitmapLoader;-><init>()V

    .line 1099
    iput p2, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$LocalTimeVideoDurationLoader;->mSlotIndex:I

    .line 1100
    iput p3, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$LocalTimeVideoDurationLoader;->mDuration:I

    return-void
.end method


# virtual methods
.method protected onLoadComplete([Landroid/graphics/Bitmap;)V
    .locals 1

    .line 1111
    iget-object p1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$LocalTimeVideoDurationLoader;->this$0:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;

    invoke-static {p1}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->access$400(Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;)Lcom/zui/gallery/ui/SynchronizedHandler;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v0, p0}, Lcom/zui/gallery/ui/SynchronizedHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1112
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method protected submitBitmapTask(Lcom/zui/gallery/util/FutureListener;)Lcom/zui/gallery/util/Future;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zui/gallery/util/FutureListener<",
            "[",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/zui/gallery/util/Future<",
            "[",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 1105
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$LocalTimeVideoDurationLoader;->this$0:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;

    invoke-static {v0}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->access$300(Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;)Lcom/zui/gallery/util/JobLimiter;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$LocalTimeVideoDurationLoader;->this$0:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;

    invoke-static {v1}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->access$1300(Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;)Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;

    move-result-object v1

    iget v2, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$LocalTimeVideoDurationLoader;->mDuration:I

    iget-object v3, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$LocalTimeVideoDurationLoader;->this$0:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;

    .line 1106
    invoke-static {v3}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->access$1200(Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;)Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;

    move-result-object v3

    const/4 v4, 0x3

    const/4 v5, 0x0

    .line 1105
    invoke-virtual {v1, v2, v4, v3, v5}, Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;->requestLabel(IILcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$TimeLabelEntry;)Lcom/zui/gallery/util/ThreadPool$Job;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/zui/gallery/util/JobLimiter;->submit(Lcom/zui/gallery/util/ThreadPool$Job;Lcom/zui/gallery/util/FutureListener;)Lcom/zui/gallery/util/Future;

    move-result-object p1

    return-object p1
.end method

.method public updateEntry()V
    .locals 4

    .line 1116
    invoke-virtual {p0}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$LocalTimeVideoDurationLoader;->getBitmap()[Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 1117
    array-length v1, v0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    goto :goto_2

    .line 1121
    :cond_0
    iget-object v1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$LocalTimeVideoDurationLoader;->this$0:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;

    invoke-static {v1}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->access$200(Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;)[Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;

    move-result-object v1

    iget v2, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$LocalTimeVideoDurationLoader;->mSlotIndex:I

    iget-object v3, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$LocalTimeVideoDurationLoader;->this$0:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;

    invoke-static {v3}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->access$200(Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;)[Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;

    move-result-object v3

    array-length v3, v3

    rem-int/2addr v2, v3

    aget-object v1, v1, v2

    if-nez v1, :cond_1

    return-void

    :cond_1
    const/4 v2, 0x0

    .line 1125
    aget-object v3, v0, v2

    if-eqz v3, :cond_5

    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    .line 1128
    :cond_2
    new-instance v3, Lcom/zui/gallery/glrenderer/BitmapTexture;

    aget-object v0, v0, v2

    invoke-direct {v3, v0}, Lcom/zui/gallery/glrenderer/BitmapTexture;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v3, v1, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;->durationTexture:Lcom/zui/gallery/glrenderer/BitmapTexture;

    .line 1129
    iget-object v0, v1, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;->durationTexture:Lcom/zui/gallery/glrenderer/BitmapTexture;

    invoke-virtual {v0, v2}, Lcom/zui/gallery/glrenderer/BitmapTexture;->setOpaque(Z)V

    .line 1130
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$LocalTimeVideoDurationLoader;->this$0:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;

    iget v2, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$LocalTimeVideoDurationLoader;->mSlotIndex:I

    invoke-virtual {v0, v2}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->isActiveSlot(I)Z

    move-result v0

    if-nez v0, :cond_4

    iget v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$LocalTimeVideoDurationLoader;->mSlotIndex:I

    iget-object v2, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$LocalTimeVideoDurationLoader;->this$0:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;

    invoke-static {v2}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->access$1400(Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;)I

    move-result v2

    if-ne v0, v2, :cond_3

    goto :goto_0

    .line 1137
    :cond_3
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$LocalTimeVideoDurationLoader;->this$0:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;

    invoke-static {v0}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->access$1500(Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;)Lcom/zui/gallery/glrenderer/TextureUploader;

    move-result-object v0

    iget-object v1, v1, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;->durationTexture:Lcom/zui/gallery/glrenderer/BitmapTexture;

    invoke-virtual {v0, v1}, Lcom/zui/gallery/glrenderer/TextureUploader;->addBgTexture(Lcom/zui/gallery/glrenderer/UploadedTexture;)V

    goto :goto_1

    .line 1131
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$LocalTimeVideoDurationLoader;->this$0:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;

    invoke-static {v0}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->access$1500(Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;)Lcom/zui/gallery/glrenderer/TextureUploader;

    move-result-object v0

    iget-object v1, v1, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;->durationTexture:Lcom/zui/gallery/glrenderer/BitmapTexture;

    invoke-virtual {v0, v1}, Lcom/zui/gallery/glrenderer/TextureUploader;->addFgTexture(Lcom/zui/gallery/glrenderer/UploadedTexture;)V

    .line 1134
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$LocalTimeVideoDurationLoader;->this$0:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;

    invoke-static {v0}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->access$1100(Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;)Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$Listener;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1135
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$LocalTimeVideoDurationLoader;->this$0:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;

    invoke-static {v0}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->access$1100(Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;)Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$Listener;->onContentChanged()V

    :cond_5
    :goto_1
    return-void

    .line 1118
    :cond_6
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- ERROR mSlotIndex:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$LocalTimeVideoDurationLoader;->mSlotIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ": video duration bitmap is null!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LocalTimeAlbumSlidingWindow"

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
