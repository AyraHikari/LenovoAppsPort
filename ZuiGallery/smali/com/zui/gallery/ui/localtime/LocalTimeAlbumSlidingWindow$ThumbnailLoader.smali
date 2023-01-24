.class Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$ThumbnailLoader;
.super Lcom/zui/gallery/ui/BitmapLoader;
.source "LocalTimeAlbumSlidingWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ThumbnailLoader"
.end annotation


# instance fields
.field private lTextureCachKey:J

.field private mIsContinuesCover:Z

.field private final mItem:Lcom/zui/gallery/data/MediaItem;

.field private mModel:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;

.field private final mSlotIndex:I

.field private mTexture:Lcom/zui/gallery/glrenderer/BitmapTexture;

.field private mType:I

.field private nTextureStatus:S

.field final synthetic this$0:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;


# direct methods
.method public constructor <init>(Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;ILcom/zui/gallery/data/MediaItem;IZ)V
    .locals 0

    .line 955
    iput-object p1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$ThumbnailLoader;->this$0:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;

    invoke-direct {p0}, Lcom/zui/gallery/ui/BitmapLoader;-><init>()V

    .line 956
    iput p2, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$ThumbnailLoader;->mSlotIndex:I

    .line 957
    iput-object p3, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$ThumbnailLoader;->mItem:Lcom/zui/gallery/data/MediaItem;

    .line 958
    iput p4, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$ThumbnailLoader;->mType:I

    const/4 p1, 0x2

    if-ne p4, p1, :cond_0

    .line 959
    sget-object p1, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;->DAY:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;

    goto :goto_0

    .line 960
    :cond_0
    sget-object p1, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;->MONTH:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;

    :goto_0
    iput-object p1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$ThumbnailLoader;->mModel:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;

    .line 962
    sget-object p2, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;->MONTH:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;

    if-ne p1, p2, :cond_1

    const/4 p1, 0x0

    .line 963
    iput-boolean p1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$ThumbnailLoader;->mIsContinuesCover:Z

    goto :goto_1

    .line 965
    :cond_1
    iput-boolean p5, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$ThumbnailLoader;->mIsContinuesCover:Z

    :goto_1
    if-nez p3, :cond_2

    :cond_2
    return-void
.end method

.method private getData()[Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;
    .locals 2

    .line 1012
    iget v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$ThumbnailLoader;->mType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$ThumbnailLoader;->this$0:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;

    invoke-static {v0}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->access$500(Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;)[Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$ThumbnailLoader;->this$0:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;

    invoke-static {v0}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->access$600(Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;)[Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private newTexture(Landroid/graphics/Bitmap;)Z
    .locals 5

    .line 1017
    iget v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$ThumbnailLoader;->mSlotIndex:I

    iget-object v1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$ThumbnailLoader;->this$0:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;

    invoke-static {v1}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->access$200(Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;)[Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;

    move-result-object v1

    array-length v1, v1

    rem-int/2addr v0, v1

    .line 1018
    invoke-direct {p0}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$ThumbnailLoader;->getData()[Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;

    move-result-object v1

    const-string v2, "LocalTimeAlbumSlidingWindow"

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    .line 1019
    invoke-direct {p0}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$ThumbnailLoader;->getData()[Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;

    move-result-object v4

    array-length v4, v4

    if-lt v0, v4, :cond_0

    goto :goto_1

    .line 1023
    :cond_0
    aget-object v0, v1, v0

    if-nez v0, :cond_1

    return v3

    :cond_1
    if-eqz p1, :cond_3

    .line 1029
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 1041
    :cond_2
    new-instance v0, Lcom/zui/gallery/glrenderer/BitmapTexture;

    invoke-direct {v0, p1}, Lcom/zui/gallery/glrenderer/BitmapTexture;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$ThumbnailLoader;->mTexture:Lcom/zui/gallery/glrenderer/BitmapTexture;

    .line 1042
    invoke-virtual {v0, v3}, Lcom/zui/gallery/glrenderer/BitmapTexture;->setOpaque(Z)V

    const/4 p1, 0x1

    return p1

    .line 1030
    :cond_3
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "- ERROR mSlotIndex:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$ThumbnailLoader;->mSlotIndex:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ": bitmap is null!"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_4
    :goto_1
    const-string p1, "LocaltimeALbumSlideWindow get index > data lenght"

    .line 1020
    invoke-static {v2, p1}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method


# virtual methods
.method protected onLoadComplete(Landroid/graphics/Bitmap;)V
    .locals 2

    const-string v0, "LocalTimeAlbumSlidingWindow"

    if-eqz p1, :cond_3

    .line 990
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 999
    :cond_0
    iget-boolean v1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$ThumbnailLoader;->mIsContinuesCover:Z

    if-eqz v1, :cond_1

    .line 1000
    iget-object v1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$ThumbnailLoader;->mItem:Lcom/zui/gallery/data/MediaItem;

    invoke-virtual {v1}, Lcom/zui/gallery/data/MediaItem;->getRotation()I

    move-result v1

    invoke-static {p1, v1}, Lcom/zui/gallery/common/BitmapUtils;->createContinuesCover(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 1003
    :cond_1
    invoke-direct {p0, p1}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$ThumbnailLoader;->newTexture(Landroid/graphics/Bitmap;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1004
    iget-object p1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$ThumbnailLoader;->this$0:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;

    invoke-static {p1}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->access$400(Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;)Lcom/zui/gallery/ui/SynchronizedHandler;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lcom/zui/gallery/ui/SynchronizedHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_2
    const-string p1, "create texture failed"

    .line 1006
    invoke-static {v0, p1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    .line 991
    :cond_3
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- ERROR mSlotIndex:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$ThumbnailLoader;->mSlotIndex:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ": bitmap is null!"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

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

    .line 976
    invoke-direct {p0}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$ThumbnailLoader;->getData()[Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;

    move-result-object p1

    iget v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$ThumbnailLoader;->mSlotIndex:I

    iget-object v1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$ThumbnailLoader;->this$0:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;

    invoke-static {v1}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->access$200(Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;)[Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;

    move-result-object v1

    array-length v1, v1

    rem-int/2addr v0, v1

    aget-object p1, p1, v0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 983
    :cond_0
    iget-object p1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$ThumbnailLoader;->this$0:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;

    invoke-static {p1}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->access$300(Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;)Lcom/zui/gallery/util/JobLimiter;

    move-result-object p1

    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$ThumbnailLoader;->mItem:Lcom/zui/gallery/data/MediaItem;

    iget v1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$ThumbnailLoader;->mType:I

    invoke-virtual {v0, v1}, Lcom/zui/gallery/data/MediaItem;->requestImage(I)Lcom/zui/gallery/util/ThreadPool$Job;

    move-result-object v0

    invoke-virtual {p1, v0, p0}, Lcom/zui/gallery/util/JobLimiter;->submit(Lcom/zui/gallery/util/ThreadPool$Job;Lcom/zui/gallery/util/FutureListener;)Lcom/zui/gallery/util/Future;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized updateEntry()V
    .locals 3

    monitor-enter p0

    .line 1050
    :try_start_0
    iget v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$ThumbnailLoader;->mSlotIndex:I

    iget-object v1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$ThumbnailLoader;->this$0:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;

    invoke-static {v1}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->access$200(Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;)[Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;

    move-result-object v1

    array-length v1, v1

    rem-int/2addr v0, v1

    .line 1051
    invoke-direct {p0}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$ThumbnailLoader;->getData()[Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 1052
    invoke-direct {p0}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$ThumbnailLoader;->getData()[Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;

    move-result-object v2

    array-length v2, v2

    if-lt v0, v2, :cond_0

    goto :goto_1

    .line 1056
    :cond_0
    aget-object v0, v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 1058
    monitor-exit p0

    return-void

    .line 1060
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$ThumbnailLoader;->mTexture:Lcom/zui/gallery/glrenderer/BitmapTexture;

    iput-object v1, v0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;->bitmapTexture:Lcom/zui/gallery/glrenderer/BitmapTexture;

    .line 1061
    iget-object v1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$ThumbnailLoader;->mTexture:Lcom/zui/gallery/glrenderer/BitmapTexture;

    iput-object v1, v0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;->content:Lcom/zui/gallery/glrenderer/Texture;

    .line 1064
    iget-object v1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$ThumbnailLoader;->this$0:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;

    iget v2, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$ThumbnailLoader;->mSlotIndex:I

    invoke-virtual {v1, v2}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->isActiveSlot(I)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$ThumbnailLoader;->this$0:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;

    iget-object v2, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$ThumbnailLoader;->mModel:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;

    invoke-static {v1, v2}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->access$700(Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1065
    iget-object v1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$ThumbnailLoader;->this$0:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;

    invoke-static {v1}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->access$800(Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;)Lcom/zui/gallery/glrenderer/TextureUploader;

    move-result-object v1

    iget-object v0, v0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;->bitmapTexture:Lcom/zui/gallery/glrenderer/BitmapTexture;

    invoke-virtual {v1, v0}, Lcom/zui/gallery/glrenderer/TextureUploader;->addFgTexture(Lcom/zui/gallery/glrenderer/UploadedTexture;)V

    .line 1066
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$ThumbnailLoader;->this$0:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;

    invoke-static {v0}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->access$906(Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;)I

    .line 1067
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$ThumbnailLoader;->this$0:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;

    invoke-static {v0}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->access$900(Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;)I

    move-result v0

    if-nez v0, :cond_2

    .line 1068
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$ThumbnailLoader;->this$0:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;

    invoke-static {v0}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->access$1000(Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;)V

    .line 1069
    :cond_2
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$ThumbnailLoader;->this$0:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;

    invoke-static {v0}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->access$1100(Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;)Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$Listener;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1070
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$ThumbnailLoader;->this$0:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;

    invoke-static {v0}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->access$1100(Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;)Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$Listener;->onContentChanged()V

    goto :goto_0

    .line 1072
    :cond_3
    iget-object v1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$ThumbnailLoader;->this$0:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;

    invoke-static {v1}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->access$800(Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;)Lcom/zui/gallery/glrenderer/TextureUploader;

    move-result-object v1

    iget-object v0, v0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;->bitmapTexture:Lcom/zui/gallery/glrenderer/BitmapTexture;

    invoke-virtual {v1, v0}, Lcom/zui/gallery/glrenderer/TextureUploader;->addBgTexture(Lcom/zui/gallery/glrenderer/UploadedTexture;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1084
    :cond_4
    :goto_0
    monitor-exit p0

    return-void

    :cond_5
    :goto_1
    :try_start_2
    const-string v0, "LocalTimeAlbumSlidingWindow"

    const-string v1, "LocaltimeALbumSlideWindow get index > data lenght"

    .line 1053
    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1054
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
