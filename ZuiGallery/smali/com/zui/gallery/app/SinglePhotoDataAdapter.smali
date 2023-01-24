.class public Lcom/zui/gallery/app/SinglePhotoDataAdapter;
.super Lcom/zui/gallery/ui/TileImageViewAdapter;
.source "SinglePhotoDataAdapter.java"

# interfaces
.implements Lcom/zui/gallery/app/PhotoPage$Model;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/app/SinglePhotoDataAdapter$ImageBundle;
    }
.end annotation


# static fields
.field private static final MSG_UPDATE_IMAGE:I = 0x1

.field private static final SIZE_BACKUP:I = 0x400

.field private static final TAG:Ljava/lang/String; = "SinglePhotoDataAdapter"


# instance fields
.field private mBitmapScreenNail:Lcom/zui/gallery/ui/BitmapScreenNail;

.field private mHandler:Landroid/os/Handler;

.field private mHasFullImage:Z

.field private mItem:Lcom/zui/gallery/data/MediaItem;

.field private mLargeListener:Lcom/zui/gallery/util/FutureListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/zui/gallery/util/FutureListener<",
            "Landroid/graphics/BitmapRegionDecoder;",
            ">;"
        }
    .end annotation
.end field

.field private mLoadingState:I

.field private mPhotoView:Lcom/zui/gallery/ui/PhotoView;

.field private mTask:Lcom/zui/gallery/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/zui/gallery/util/Future<",
            "*>;"
        }
    .end annotation
.end field

.field private mThreadPool:Lcom/zui/gallery/util/ThreadPool;

.field private mThumbListener:Lcom/zui/gallery/util/FutureListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/zui/gallery/util/FutureListener<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/zui/gallery/app/AbstractGalleryActivity;Lcom/zui/gallery/ui/PhotoView;Lcom/zui/gallery/data/MediaItem;)V
    .locals 2

    .line 59
    invoke-direct {p0}, Lcom/zui/gallery/ui/TileImageViewAdapter;-><init>()V

    const/4 v0, 0x0

    .line 55
    iput v0, p0, Lcom/zui/gallery/app/SinglePhotoDataAdapter;->mLoadingState:I

    .line 97
    new-instance v1, Lcom/zui/gallery/app/SinglePhotoDataAdapter$2;

    invoke-direct {v1, p0}, Lcom/zui/gallery/app/SinglePhotoDataAdapter$2;-><init>(Lcom/zui/gallery/app/SinglePhotoDataAdapter;)V

    iput-object v1, p0, Lcom/zui/gallery/app/SinglePhotoDataAdapter;->mLargeListener:Lcom/zui/gallery/util/FutureListener;

    .line 125
    new-instance v1, Lcom/zui/gallery/app/SinglePhotoDataAdapter$3;

    invoke-direct {v1, p0}, Lcom/zui/gallery/app/SinglePhotoDataAdapter$3;-><init>(Lcom/zui/gallery/app/SinglePhotoDataAdapter;)V

    iput-object v1, p0, Lcom/zui/gallery/app/SinglePhotoDataAdapter;->mThumbListener:Lcom/zui/gallery/util/FutureListener;

    .line 60
    invoke-static {p3}, Lcom/zui/gallery/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/data/MediaItem;

    iput-object v1, p0, Lcom/zui/gallery/app/SinglePhotoDataAdapter;->mItem:Lcom/zui/gallery/data/MediaItem;

    .line 61
    invoke-virtual {p3}, Lcom/zui/gallery/data/MediaItem;->getSupportedOperations()I

    move-result p3

    and-int/lit8 p3, p3, 0x40

    if-eqz p3, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/zui/gallery/app/SinglePhotoDataAdapter;->mHasFullImage:Z

    .line 63
    invoke-static {p2}, Lcom/zui/gallery/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/zui/gallery/ui/PhotoView;

    iput-object p2, p0, Lcom/zui/gallery/app/SinglePhotoDataAdapter;->mPhotoView:Lcom/zui/gallery/ui/PhotoView;

    .line 64
    new-instance p2, Lcom/zui/gallery/app/SinglePhotoDataAdapter$1;

    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getGLRoot()Lcom/zui/gallery/ui/GLRoot;

    move-result-object p3

    invoke-direct {p2, p0, p3}, Lcom/zui/gallery/app/SinglePhotoDataAdapter$1;-><init>(Lcom/zui/gallery/app/SinglePhotoDataAdapter;Lcom/zui/gallery/ui/GLRoot;)V

    iput-object p2, p0, Lcom/zui/gallery/app/SinglePhotoDataAdapter;->mHandler:Landroid/os/Handler;

    .line 76
    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getThreadPool()Lcom/zui/gallery/util/ThreadPool;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/app/SinglePhotoDataAdapter;->mThreadPool:Lcom/zui/gallery/util/ThreadPool;

    return-void
.end method

.method static synthetic access$000(Lcom/zui/gallery/app/SinglePhotoDataAdapter;)Z
    .locals 0

    .line 41
    iget-boolean p0, p0, Lcom/zui/gallery/app/SinglePhotoDataAdapter;->mHasFullImage:Z

    return p0
.end method

.method static synthetic access$002(Lcom/zui/gallery/app/SinglePhotoDataAdapter;Z)Z
    .locals 0

    .line 41
    iput-boolean p1, p0, Lcom/zui/gallery/app/SinglePhotoDataAdapter;->mHasFullImage:Z

    return p1
.end method

.method static synthetic access$100(Lcom/zui/gallery/app/SinglePhotoDataAdapter;Lcom/zui/gallery/app/SinglePhotoDataAdapter$ImageBundle;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/zui/gallery/app/SinglePhotoDataAdapter;->onDecodeLargeComplete(Lcom/zui/gallery/app/SinglePhotoDataAdapter$ImageBundle;)V

    return-void
.end method

.method static synthetic access$200(Lcom/zui/gallery/app/SinglePhotoDataAdapter;Lcom/zui/gallery/util/Future;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/zui/gallery/app/SinglePhotoDataAdapter;->onDecodeThumbComplete(Lcom/zui/gallery/util/Future;)V

    return-void
.end method

.method static synthetic access$300(Lcom/zui/gallery/app/SinglePhotoDataAdapter;)Lcom/zui/gallery/util/Future;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/zui/gallery/app/SinglePhotoDataAdapter;->mTask:Lcom/zui/gallery/util/Future;

    return-object p0
.end method

.method static synthetic access$400(Lcom/zui/gallery/app/SinglePhotoDataAdapter;)Landroid/os/Handler;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/zui/gallery/app/SinglePhotoDataAdapter;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private onDecodeLargeComplete(Lcom/zui/gallery/app/SinglePhotoDataAdapter$ImageBundle;)V
    .locals 3

    .line 146
    :try_start_0
    iget-object v0, p1, Lcom/zui/gallery/app/SinglePhotoDataAdapter$ImageBundle;->decoder:Landroid/graphics/BitmapRegionDecoder;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/zui/gallery/app/SinglePhotoDataAdapter$ImageBundle;->decoder:Landroid/graphics/BitmapRegionDecoder;

    invoke-virtual {v0}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I

    move-result v0

    goto :goto_0

    :cond_0
    iget v0, p1, Lcom/zui/gallery/app/SinglePhotoDataAdapter$ImageBundle;->width:I

    .line 147
    :goto_0
    iget-object v1, p1, Lcom/zui/gallery/app/SinglePhotoDataAdapter$ImageBundle;->decoder:Landroid/graphics/BitmapRegionDecoder;

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/zui/gallery/app/SinglePhotoDataAdapter$ImageBundle;->decoder:Landroid/graphics/BitmapRegionDecoder;

    invoke-virtual {v1}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I

    move-result v1

    goto :goto_1

    :cond_1
    iget v1, p1, Lcom/zui/gallery/app/SinglePhotoDataAdapter$ImageBundle;->height:I

    .line 148
    :goto_1
    iget-object v2, p1, Lcom/zui/gallery/app/SinglePhotoDataAdapter$ImageBundle;->backupImage:Landroid/graphics/Bitmap;

    invoke-direct {p0, v2, v0, v1}, Lcom/zui/gallery/app/SinglePhotoDataAdapter;->setScreenNail(Landroid/graphics/Bitmap;II)V

    .line 150
    iget-object v0, p1, Lcom/zui/gallery/app/SinglePhotoDataAdapter$ImageBundle;->decoder:Landroid/graphics/BitmapRegionDecoder;

    if-eqz v0, :cond_2

    .line 151
    iget-object p1, p1, Lcom/zui/gallery/app/SinglePhotoDataAdapter$ImageBundle;->decoder:Landroid/graphics/BitmapRegionDecoder;

    invoke-virtual {p0, p1}, Lcom/zui/gallery/app/SinglePhotoDataAdapter;->setRegionDecoder(Landroid/graphics/BitmapRegionDecoder;)V

    .line 154
    :cond_2
    iget-object p1, p0, Lcom/zui/gallery/app/SinglePhotoDataAdapter;->mPhotoView:Lcom/zui/gallery/ui/PhotoView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/zui/gallery/ui/PhotoView;->notifyImageChange(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    const-string v0, "SinglePhotoDataAdapter"

    const-string v1, "fail to decode large"

    .line 156
    invoke-static {v0, v1, p1}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-void
.end method

.method private onDecodeThumbComplete(Lcom/zui/gallery/util/Future;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zui/gallery/util/Future<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 162
    :try_start_0
    invoke-interface {p1}, Lcom/zui/gallery/util/Future;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    if-nez p1, :cond_0

    const/4 p1, 0x2

    .line 164
    iput p1, p0, Lcom/zui/gallery/app/SinglePhotoDataAdapter;->mLoadingState:I

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 167
    iput v0, p0, Lcom/zui/gallery/app/SinglePhotoDataAdapter;->mLoadingState:I

    .line 169
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/zui/gallery/app/SinglePhotoDataAdapter;->setScreenNail(Landroid/graphics/Bitmap;II)V

    .line 170
    iget-object p1, p0, Lcom/zui/gallery/app/SinglePhotoDataAdapter;->mPhotoView:Lcom/zui/gallery/ui/PhotoView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/zui/gallery/ui/PhotoView;->notifyImageChange(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "SinglePhotoDataAdapter"

    const-string v1, "fail to decode thumb"

    .line 172
    invoke-static {v0, v1, p1}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private setScreenNail(Landroid/graphics/Bitmap;II)V
    .locals 1

    .line 140
    new-instance v0, Lcom/zui/gallery/ui/BitmapScreenNail;

    invoke-direct {v0, p1}, Lcom/zui/gallery/ui/BitmapScreenNail;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/zui/gallery/app/SinglePhotoDataAdapter;->mBitmapScreenNail:Lcom/zui/gallery/ui/BitmapScreenNail;

    .line 141
    invoke-virtual {p0, v0, p2, p3}, Lcom/zui/gallery/app/SinglePhotoDataAdapter;->setScreenNail(Lcom/zui/gallery/ui/ScreenNail;II)V

    return-void
.end method


# virtual methods
.method public cleanSelectedItem()V
    .locals 0

    return-void
.end method

.method public getContinuousCount(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getCurrentIndex()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getImageRotation(I)I
    .locals 0

    if-nez p1, :cond_0

    .line 222
    iget-object p1, p0, Lcom/zui/gallery/app/SinglePhotoDataAdapter;->mItem:Lcom/zui/gallery/data/MediaItem;

    invoke-virtual {p1}, Lcom/zui/gallery/data/MediaItem;->getFullImageRotation()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getImageSize(ILcom/zui/gallery/ui/PhotoView$Size;)V
    .locals 0

    if-nez p1, :cond_0

    .line 212
    iget-object p1, p0, Lcom/zui/gallery/app/SinglePhotoDataAdapter;->mItem:Lcom/zui/gallery/data/MediaItem;

    invoke-virtual {p1}, Lcom/zui/gallery/data/MediaItem;->getWidth()I

    move-result p1

    iput p1, p2, Lcom/zui/gallery/ui/PhotoView$Size;->width:I

    .line 213
    iget-object p1, p0, Lcom/zui/gallery/app/SinglePhotoDataAdapter;->mItem:Lcom/zui/gallery/data/MediaItem;

    invoke-virtual {p1}, Lcom/zui/gallery/data/MediaItem;->getHeight()I

    move-result p1

    iput p1, p2, Lcom/zui/gallery/ui/PhotoView$Size;->height:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 215
    iput p1, p2, Lcom/zui/gallery/ui/PhotoView$Size;->width:I

    .line 216
    iput p1, p2, Lcom/zui/gallery/ui/PhotoView$Size;->height:I

    :goto_0
    return-void
.end method

.method public getLoadingState(I)I
    .locals 0

    .line 336
    iget p1, p0, Lcom/zui/gallery/app/SinglePhotoDataAdapter;->mLoadingState:I

    return p1
.end method

.method public getMediaItem(I)Lcom/zui/gallery/data/MediaItem;
    .locals 0

    if-nez p1, :cond_0

    .line 311
    iget-object p1, p0, Lcom/zui/gallery/app/SinglePhotoDataAdapter;->mItem:Lcom/zui/gallery/data/MediaItem;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getMult(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getScreenNail(I)Lcom/zui/gallery/ui/ScreenNail;
    .locals 0

    if-nez p1, :cond_0

    .line 227
    invoke-virtual {p0}, Lcom/zui/gallery/app/SinglePhotoDataAdapter;->getScreenNail()Lcom/zui/gallery/ui/ScreenNail;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public isBestChoice(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isCamera(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isCameraVideoHDR(I)Z
    .locals 2

    .line 242
    iget-object p1, p0, Lcom/zui/gallery/app/SinglePhotoDataAdapter;->mItem:Lcom/zui/gallery/data/MediaItem;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 243
    invoke-virtual {p1}, Lcom/zui/gallery/data/MediaItem;->getMediaType()I

    move-result p1

    const/16 v1, 0xd

    if-ne p1, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isContinuousShot(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isDeletable(I)Z
    .locals 1

    .line 306
    iget-object p1, p0, Lcom/zui/gallery/app/SinglePhotoDataAdapter;->mItem:Lcom/zui/gallery/data/MediaItem;

    invoke-virtual {p1}, Lcom/zui/gallery/data/MediaItem;->getSupportedOperations()I

    move-result p1

    const/4 v0, 0x1

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDepthImage(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isEmpty()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isHdrPhoto(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isMicoVideoImage(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isPanoAlbum()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isPanoVideo(I)Z
    .locals 1

    .line 297
    invoke-virtual {p0, p1}, Lcom/zui/gallery/app/SinglePhotoDataAdapter;->isVideo(I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/zui/gallery/app/SinglePhotoDataAdapter;->mItem:Lcom/zui/gallery/data/MediaItem;

    const/4 v0, 0x0

    .line 298
    invoke-static {p1, v0}, Lcom/zui/gallery/util/GalleryUtils;->isCapturedBy360Mods(Lcom/zui/gallery/data/MediaItem;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isPanorama(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isSelected(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isSelfAlbum()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSlowVideo(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isStaticCamera(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isVideo(I)Z
    .locals 3

    .line 274
    iget-object p1, p0, Lcom/zui/gallery/app/SinglePhotoDataAdapter;->mItem:Lcom/zui/gallery/data/MediaItem;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 275
    invoke-virtual {p1}, Lcom/zui/gallery/data/MediaItem;->getMediaType()I

    move-result p1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    const/16 v1, 0x14

    if-eq p1, v1, :cond_0

    const/16 v1, 0x8

    if-eq p1, v1, :cond_0

    const/16 v1, 0xa

    if-eq p1, v1, :cond_0

    const/16 v1, 0xb

    if-eq p1, v1, :cond_0

    const/16 v2, 0x12

    if-eq p1, v2, :cond_0

    if-eq p1, v1, :cond_0

    const/16 v1, 0xd

    if-ne p1, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public moveTo(I)V
    .locals 0

    .line 206
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public pause(Z)V
    .locals 1

    .line 192
    iget-object p1, p0, Lcom/zui/gallery/app/SinglePhotoDataAdapter;->mTask:Lcom/zui/gallery/util/Future;

    .line 193
    invoke-interface {p1}, Lcom/zui/gallery/util/Future;->cancel()V

    .line 194
    invoke-interface {p1}, Lcom/zui/gallery/util/Future;->waitDone()V

    .line 195
    invoke-interface {p1}, Lcom/zui/gallery/util/Future;->get()Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 196
    iput-object v0, p0, Lcom/zui/gallery/app/SinglePhotoDataAdapter;->mTask:Lcom/zui/gallery/util/Future;

    .line 198
    :cond_0
    iget-object p1, p0, Lcom/zui/gallery/app/SinglePhotoDataAdapter;->mBitmapScreenNail:Lcom/zui/gallery/ui/BitmapScreenNail;

    if-eqz p1, :cond_1

    .line 199
    invoke-virtual {p1}, Lcom/zui/gallery/ui/BitmapScreenNail;->recycle()V

    .line 200
    iput-object v0, p0, Lcom/zui/gallery/app/SinglePhotoDataAdapter;->mBitmapScreenNail:Lcom/zui/gallery/ui/BitmapScreenNail;

    :cond_1
    return-void
.end method

.method public resume()V
    .locals 3

    .line 178
    iget-object v0, p0, Lcom/zui/gallery/app/SinglePhotoDataAdapter;->mTask:Lcom/zui/gallery/util/Future;

    if-nez v0, :cond_1

    .line 179
    iget-boolean v0, p0, Lcom/zui/gallery/app/SinglePhotoDataAdapter;->mHasFullImage:Z

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/zui/gallery/app/SinglePhotoDataAdapter;->mThreadPool:Lcom/zui/gallery/util/ThreadPool;

    iget-object v1, p0, Lcom/zui/gallery/app/SinglePhotoDataAdapter;->mItem:Lcom/zui/gallery/data/MediaItem;

    .line 181
    invoke-virtual {v1}, Lcom/zui/gallery/data/MediaItem;->requestLargeImage()Lcom/zui/gallery/util/ThreadPool$Job;

    move-result-object v1

    iget-object v2, p0, Lcom/zui/gallery/app/SinglePhotoDataAdapter;->mLargeListener:Lcom/zui/gallery/util/FutureListener;

    .line 180
    invoke-virtual {v0, v1, v2}, Lcom/zui/gallery/util/ThreadPool;->submit(Lcom/zui/gallery/util/ThreadPool$Job;Lcom/zui/gallery/util/FutureListener;)Lcom/zui/gallery/util/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/app/SinglePhotoDataAdapter;->mTask:Lcom/zui/gallery/util/Future;

    goto :goto_0

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/app/SinglePhotoDataAdapter;->mThreadPool:Lcom/zui/gallery/util/ThreadPool;

    iget-object v1, p0, Lcom/zui/gallery/app/SinglePhotoDataAdapter;->mItem:Lcom/zui/gallery/data/MediaItem;

    const/4 v2, 0x1

    .line 184
    invoke-virtual {v1, v2}, Lcom/zui/gallery/data/MediaItem;->requestImage(I)Lcom/zui/gallery/util/ThreadPool$Job;

    move-result-object v1

    iget-object v2, p0, Lcom/zui/gallery/app/SinglePhotoDataAdapter;->mThumbListener:Lcom/zui/gallery/util/FutureListener;

    .line 183
    invoke-virtual {v0, v1, v2}, Lcom/zui/gallery/util/ThreadPool;->submit(Lcom/zui/gallery/util/ThreadPool$Job;Lcom/zui/gallery/util/FutureListener;)Lcom/zui/gallery/util/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/app/SinglePhotoDataAdapter;->mTask:Lcom/zui/gallery/util/Future;

    :cond_1
    :goto_0
    return-void
.end method

.method public setBestChoice(ZI)V
    .locals 0

    return-void
.end method

.method public setContinuousShotMode(Z)V
    .locals 0

    return-void
.end method

.method public setCurrentPhoto(Lcom/zui/gallery/data/Path;I)V
    .locals 0

    return-void
.end method

.method public setFocusHintDirection(I)V
    .locals 0

    return-void
.end method

.method public setFocusHintPath(Lcom/zui/gallery/data/Path;)V
    .locals 0

    return-void
.end method

.method public setNeedFullImage(Z)V
    .locals 0

    return-void
.end method

.method public setSelected(ZI)V
    .locals 0

    return-void
.end method
