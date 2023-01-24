.class Lcom/zui/gallery/app/PhotoDataAdapter$ScreenNailJob;
.super Ljava/lang/Object;
.source "PhotoDataAdapter.java"

# interfaces
.implements Lcom/zui/gallery/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/app/PhotoDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScreenNailJob"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/zui/gallery/util/ThreadPool$Job<",
        "Lcom/zui/gallery/ui/ScreenNail;",
        ">;"
    }
.end annotation


# instance fields
.field private mForceReload:Z

.field private mItem:Lcom/zui/gallery/data/MediaItem;

.field final synthetic this$0:Lcom/zui/gallery/app/PhotoDataAdapter;


# direct methods
.method public constructor <init>(Lcom/zui/gallery/app/PhotoDataAdapter;Lcom/zui/gallery/data/MediaItem;)V
    .locals 0

    .line 933
    iput-object p1, p0, Lcom/zui/gallery/app/PhotoDataAdapter$ScreenNailJob;->this$0:Lcom/zui/gallery/app/PhotoDataAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 930
    iput-boolean p1, p0, Lcom/zui/gallery/app/PhotoDataAdapter$ScreenNailJob;->mForceReload:Z

    .line 934
    iput-object p2, p0, Lcom/zui/gallery/app/PhotoDataAdapter$ScreenNailJob;->mItem:Lcom/zui/gallery/data/MediaItem;

    .line 935
    invoke-virtual {p2}, Lcom/zui/gallery/data/MediaItem;->getSupportedOperations()I

    move-result p2

    and-int/lit8 p2, p2, 0x40

    if-nez p2, :cond_0

    const/4 p1, 0x1

    :cond_0
    iput-boolean p1, p0, Lcom/zui/gallery/app/PhotoDataAdapter$ScreenNailJob;->mForceReload:Z

    .line 936
    iget-object p2, p0, Lcom/zui/gallery/app/PhotoDataAdapter$ScreenNailJob;->mItem:Lcom/zui/gallery/data/MediaItem;

    invoke-virtual {p2, p1}, Lcom/zui/gallery/data/MediaItem;->setForceReload(Z)V

    return-void
.end method


# virtual methods
.method public run(Lcom/zui/gallery/util/ThreadPool$JobContext;)Lcom/zui/gallery/ui/ScreenNail;
    .locals 12

    .line 943
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoDataAdapter$ScreenNailJob;->mItem:Lcom/zui/gallery/data/MediaItem;

    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaItem;->getScreenNail()Lcom/zui/gallery/ui/ScreenNail;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 948
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoDataAdapter$ScreenNailJob;->this$0:Lcom/zui/gallery/app/PhotoDataAdapter;

    iget-object v1, p0, Lcom/zui/gallery/app/PhotoDataAdapter$ScreenNailJob;->mItem:Lcom/zui/gallery/data/MediaItem;

    invoke-static {v0, v1}, Lcom/zui/gallery/app/PhotoDataAdapter;->access$500(Lcom/zui/gallery/app/PhotoDataAdapter;Lcom/zui/gallery/data/MediaItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 949
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoDataAdapter$ScreenNailJob;->this$0:Lcom/zui/gallery/app/PhotoDataAdapter;

    iget-object v0, p0, Lcom/zui/gallery/app/PhotoDataAdapter$ScreenNailJob;->mItem:Lcom/zui/gallery/data/MediaItem;

    invoke-static {p1, v0}, Lcom/zui/gallery/app/PhotoDataAdapter;->access$600(Lcom/zui/gallery/app/PhotoDataAdapter;Lcom/zui/gallery/data/MediaItem;)Lcom/zui/gallery/ui/ScreenNail;

    move-result-object p1

    return-object p1

    .line 955
    :cond_1
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoDataAdapter$ScreenNailJob;->mItem:Lcom/zui/gallery/data/MediaItem;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zui/gallery/data/MediaItem;->requestImage(I)Lcom/zui/gallery/util/ThreadPool$Job;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/cache/ImageCacheRequest;

    .line 957
    invoke-virtual {v0, p1}, Lcom/zui/gallery/cache/ImageCacheRequest;->run(Lcom/zui/gallery/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 958
    iget-object v3, p0, Lcom/zui/gallery/app/PhotoDataAdapter$ScreenNailJob;->mItem:Lcom/zui/gallery/data/MediaItem;

    invoke-virtual {v3}, Lcom/zui/gallery/data/MediaItem;->getPath()Lcom/zui/gallery/data/Path;

    move-result-object v8

    .line 971
    iget-object v3, p0, Lcom/zui/gallery/app/PhotoDataAdapter$ScreenNailJob;->mItem:Lcom/zui/gallery/data/MediaItem;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/zui/gallery/data/MediaItem;->setForceReload(Z)V

    .line 972
    invoke-interface {p1}, Lcom/zui/gallery/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    return-object v4

    :cond_2
    if-eqz v2, :cond_3

    .line 974
    iget-object v3, p0, Lcom/zui/gallery/app/PhotoDataAdapter$ScreenNailJob;->mItem:Lcom/zui/gallery/data/MediaItem;

    .line 975
    invoke-virtual {v3}, Lcom/zui/gallery/data/MediaItem;->getRotation()I

    move-result v3

    iget-object v5, p0, Lcom/zui/gallery/app/PhotoDataAdapter$ScreenNailJob;->mItem:Lcom/zui/gallery/data/MediaItem;

    invoke-virtual {v5}, Lcom/zui/gallery/data/MediaItem;->getFullImageRotation()I

    move-result v5

    sub-int/2addr v3, v5

    .line 974
    invoke-static {v2, v3, v1}, Lcom/zui/gallery/common/BitmapUtils;->rotateBitmap(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v2

    :cond_3
    move-object v7, v2

    if-nez v7, :cond_4

    goto :goto_0

    .line 977
    :cond_4
    new-instance v1, Lcom/zui/gallery/ui/TiledScreenNail;

    iget-object v2, p0, Lcom/zui/gallery/app/PhotoDataAdapter$ScreenNailJob;->this$0:Lcom/zui/gallery/app/PhotoDataAdapter;

    invoke-static {v2}, Lcom/zui/gallery/app/PhotoDataAdapter;->access$700(Lcom/zui/gallery/app/PhotoDataAdapter;)Lcom/zui/gallery/app/GalleryApp;

    move-result-object v5

    invoke-virtual {v0}, Lcom/zui/gallery/cache/ImageCacheRequest;->getTimeModified()J

    move-result-wide v9

    const/4 v11, 0x1

    move-object v4, v1

    move-object v6, p1

    invoke-direct/range {v4 .. v11}, Lcom/zui/gallery/ui/TiledScreenNail;-><init>(Lcom/zui/gallery/app/GalleryApp;Lcom/zui/gallery/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Lcom/zui/gallery/data/Path;JI)V

    :goto_0
    return-object v4
.end method

.method public bridge synthetic run(Lcom/zui/gallery/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 0

    .line 927
    invoke-virtual {p0, p1}, Lcom/zui/gallery/app/PhotoDataAdapter$ScreenNailJob;->run(Lcom/zui/gallery/util/ThreadPool$JobContext;)Lcom/zui/gallery/ui/ScreenNail;

    move-result-object p1

    return-object p1
.end method
