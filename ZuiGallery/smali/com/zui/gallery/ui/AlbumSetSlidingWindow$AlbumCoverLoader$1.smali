.class Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader$1;
.super Lcom/zui/cloudservice/lpcs/ILPCSResultCallback$Stub;
.source "AlbumSetSlidingWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->getTrashFileCount()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;

.field final synthetic val$CLOUD_TRASH_URI:Landroid/net/Uri;

.field final synthetic val$cloudTrashItemList:Ljava/util/List;

.field final synthetic val$finalCountDownLatch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$mCount:[I


# direct methods
.method constructor <init>(Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;Landroid/net/Uri;[ILjava/util/List;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 1321
    iput-object p1, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader$1;->this$1:Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;

    iput-object p2, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader$1;->val$CLOUD_TRASH_URI:Landroid/net/Uri;

    iput-object p3, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader$1;->val$mCount:[I

    iput-object p4, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader$1;->val$cloudTrashItemList:Ljava/util/List;

    iput-object p5, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader$1;->val$finalCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Lcom/zui/cloudservice/lpcs/ILPCSResultCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/zui/cloudservice/lpcs/LPCSResult;)V
    .locals 8

    const/4 p1, 0x0

    .line 1326
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 1327
    new-instance v7, Landroidx/loader/content/CursorLoader;

    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader$1;->this$1:Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;

    iget-object v0, v0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcom/zui/gallery/ui/AlbumSetSlidingWindow;

    invoke-static {v0}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->access$1100(Lcom/zui/gallery/ui/AlbumSetSlidingWindow;)Lcom/zui/gallery/app/GalleryApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/zui/gallery/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader$1;->val$CLOUD_TRASH_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Landroidx/loader/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 1328
    invoke-virtual {v7}, Landroidx/loader/content/CursorLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1330
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader$1;->val$mCount:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    add-int/2addr v2, v3

    aput v2, v0, v1

    .line 1332
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader$1;->this$1:Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;

    iget-object v1, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader$1;->val$cloudTrashItemList:Ljava/util/List;

    invoke-static {v0, v1, p1}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->access$1800(Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;Ljava/util/List;Landroid/database/Cursor;)V

    .line 1333
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader$1;->this$1:Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;

    iget-object v0, v0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcom/zui/gallery/ui/AlbumSetSlidingWindow;

    invoke-static {v0}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->access$1100(Lcom/zui/gallery/ui/AlbumSetSlidingWindow;)Lcom/zui/gallery/app/GalleryApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/zui/gallery/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/gallery/util/GalleryUtils;->isFirstToTrash(Landroid/content/Context;)V

    .line 1334
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader$1;->val$finalCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_0

    .line 1335
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader$1;->val$finalCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    const-string/jumbo v0, "zlq"

    .line 1336
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "first CountDown load Cloud count ... "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    if-eqz p1, :cond_2

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz p1, :cond_1

    .line 1343
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 1345
    :cond_1
    throw v0

    :catch_0
    if-eqz p1, :cond_2

    .line 1343
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_2
    return-void
.end method
