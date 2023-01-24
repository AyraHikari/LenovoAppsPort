.class public Lcom/zui/gallery/app/SlideshowPage;
.super Lcom/zui/gallery/app/ActivityState;
.source "SlideshowPage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/app/SlideshowPage$SequentialSource;,
        Lcom/zui/gallery/app/SlideshowPage$ShuffleSource;,
        Lcom/zui/gallery/app/SlideshowPage$Slide;,
        Lcom/zui/gallery/app/SlideshowPage$Model;
    }
.end annotation


# static fields
.field public static final KEY_DREAM:Ljava/lang/String; = "dream"

.field public static final KEY_ITEM_PATH:Ljava/lang/String; = "media-item-path"

.field public static final KEY_PHOTO_INDEX:Ljava/lang/String; = "photo-index"

.field public static final KEY_RANDOM_ORDER:Ljava/lang/String; = "random-order"

.field public static final KEY_REPEAT:Ljava/lang/String; = "repeat"

.field public static final KEY_SET_PATH:Ljava/lang/String; = "media-set-path"

.field private static final MSG_LOAD_NEXT_BITMAP:I = 0x1

.field private static final MSG_SHOW_PENDING_BITMAP:I = 0x2

.field private static final SLIDESHOW_DELAY:J = 0xbb8L

.field private static final TAG:Ljava/lang/String; = "SlideshowPage"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mIsActive:Z

.field private mModel:Lcom/zui/gallery/app/SlideshowPage$Model;

.field private mPendingSlide:Lcom/zui/gallery/app/SlideshowPage$Slide;

.field private final mResultIntent:Landroid/content/Intent;

.field private final mRootPane:Lcom/zui/gallery/ui/GLView;

.field private mSlideshowView:Lcom/zui/gallery/ui/SlideshowView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Lcom/zui/gallery/app/ActivityState;-><init>()V

    const/4 v0, 0x0

    .line 84
    iput-object v0, p0, Lcom/zui/gallery/app/SlideshowPage;->mPendingSlide:Lcom/zui/gallery/app/SlideshowPage$Slide;

    const/4 v0, 0x0

    .line 85
    iput-boolean v0, p0, Lcom/zui/gallery/app/SlideshowPage;->mIsActive:Z

    .line 86
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/app/SlideshowPage;->mResultIntent:Landroid/content/Intent;

    .line 93
    new-instance v0, Lcom/zui/gallery/app/SlideshowPage$1;

    invoke-direct {v0, p0}, Lcom/zui/gallery/app/SlideshowPage$1;-><init>(Lcom/zui/gallery/app/SlideshowPage;)V

    iput-object v0, p0, Lcom/zui/gallery/app/SlideshowPage;->mRootPane:Lcom/zui/gallery/ui/GLView;

    return-void
.end method

.method static synthetic access$000(Lcom/zui/gallery/app/SlideshowPage;)Lcom/zui/gallery/ui/SlideshowView;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/zui/gallery/app/SlideshowPage;->mSlideshowView:Lcom/zui/gallery/ui/SlideshowView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/zui/gallery/app/SlideshowPage;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/zui/gallery/app/SlideshowPage;->showPendingBitmap()V

    return-void
.end method

.method static synthetic access$200(Lcom/zui/gallery/app/SlideshowPage;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/zui/gallery/app/SlideshowPage;->loadNextBitmap()V

    return-void
.end method

.method static synthetic access$302(Lcom/zui/gallery/app/SlideshowPage;Lcom/zui/gallery/app/SlideshowPage$Slide;)Lcom/zui/gallery/app/SlideshowPage$Slide;
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/zui/gallery/app/SlideshowPage;->mPendingSlide:Lcom/zui/gallery/app/SlideshowPage$Slide;

    return-object p1
.end method

.method static synthetic access$400(Lcom/zui/gallery/app/SlideshowPage;)Landroid/os/Handler;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/zui/gallery/app/SlideshowPage;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$500(Lcom/zui/gallery/data/MediaSet;I)Lcom/zui/gallery/data/MediaItem;
    .locals 0

    .line 45
    invoke-static {p0, p1}, Lcom/zui/gallery/app/SlideshowPage;->findMediaItem(Lcom/zui/gallery/data/MediaSet;I)Lcom/zui/gallery/data/MediaItem;

    move-result-object p0

    return-object p0
.end method

.method private static findMediaItem(Lcom/zui/gallery/data/MediaSet;I)Lcom/zui/gallery/data/MediaItem;
    .locals 5

    .line 228
    invoke-virtual {p0}, Lcom/zui/gallery/data/MediaSet;->getSubMediaSetCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 229
    invoke-virtual {p0, v2}, Lcom/zui/gallery/data/MediaSet;->getSubMediaSet(I)Lcom/zui/gallery/data/MediaSet;

    move-result-object v3

    .line 230
    invoke-virtual {v3}, Lcom/zui/gallery/data/MediaSet;->getTotalMediaItemCount()I

    move-result v4

    if-ge p1, v4, :cond_0

    .line 232
    invoke-static {v3, p1}, Lcom/zui/gallery/app/SlideshowPage;->findMediaItem(Lcom/zui/gallery/data/MediaSet;I)Lcom/zui/gallery/data/MediaItem;

    move-result-object p0

    return-object p0

    :cond_0
    sub-int/2addr p1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 236
    invoke-virtual {p0, p1, v0}, Lcom/zui/gallery/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object p0

    .line 237
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/zui/gallery/data/MediaItem;

    :goto_1
    return-object p0
.end method

.method private initializeData(Landroid/os/Bundle;)V
    .locals 8

    const-string v0, "random-order"

    const/4 v1, 0x0

    .line 198
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string v2, "media-set-path"

    .line 201
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    .line 202
    invoke-static {v2, v3}, Lcom/zui/gallery/app/FilterUtils;->newFilterPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 203
    iget-object v3, p0, Lcom/zui/gallery/app/SlideshowPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getDataManager()Lcom/zui/gallery/data/DataManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/zui/gallery/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/zui/gallery/data/MediaSet;

    move-result-object v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    const-string v5, "repeat"

    const-string v6, "photo-index"

    if-eqz v0, :cond_0

    .line 206
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 207
    new-instance v0, Lcom/zui/gallery/app/SlideshowDataAdapter;

    iget-object v5, p0, Lcom/zui/gallery/app/SlideshowPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    new-instance v7, Lcom/zui/gallery/app/SlideshowPage$ShuffleSource;

    invoke-direct {v7, v2, p1}, Lcom/zui/gallery/app/SlideshowPage$ShuffleSource;-><init>(Lcom/zui/gallery/data/MediaSet;Z)V

    invoke-direct {v0, v5, v7, v1, v4}, Lcom/zui/gallery/app/SlideshowDataAdapter;-><init>(Lcom/zui/gallery/app/GalleryContext;Lcom/zui/gallery/app/SlideshowDataAdapter$SlideshowSource;ILcom/zui/gallery/data/Path;)V

    iput-object v0, p0, Lcom/zui/gallery/app/SlideshowPage;->mModel:Lcom/zui/gallery/app/SlideshowPage$Model;

    .line 209
    iget-object p1, p0, Lcom/zui/gallery/app/SlideshowPage;->mResultIntent:Landroid/content/Intent;

    invoke-virtual {p1, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, v3, p1}, Lcom/zui/gallery/app/SlideshowPage;->setStateResult(ILandroid/content/Intent;)V

    goto :goto_0

    .line 211
    :cond_0
    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "media-item-path"

    .line 212
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 213
    invoke-static {v1}, Lcom/zui/gallery/data/Path;->fromString(Ljava/lang/String;)Lcom/zui/gallery/data/Path;

    move-result-object v4

    .line 214
    :cond_1
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 215
    new-instance v1, Lcom/zui/gallery/app/SlideshowDataAdapter;

    iget-object v5, p0, Lcom/zui/gallery/app/SlideshowPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    new-instance v7, Lcom/zui/gallery/app/SlideshowPage$SequentialSource;

    invoke-direct {v7, v2, p1}, Lcom/zui/gallery/app/SlideshowPage$SequentialSource;-><init>(Lcom/zui/gallery/data/MediaSet;Z)V

    invoke-direct {v1, v5, v7, v0, v4}, Lcom/zui/gallery/app/SlideshowDataAdapter;-><init>(Lcom/zui/gallery/app/GalleryContext;Lcom/zui/gallery/app/SlideshowDataAdapter$SlideshowSource;ILcom/zui/gallery/data/Path;)V

    iput-object v1, p0, Lcom/zui/gallery/app/SlideshowPage;->mModel:Lcom/zui/gallery/app/SlideshowPage$Model;

    .line 217
    iget-object p1, p0, Lcom/zui/gallery/app/SlideshowPage;->mResultIntent:Landroid/content/Intent;

    invoke-virtual {p1, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, v3, p1}, Lcom/zui/gallery/app/SlideshowPage;->setStateResult(ILandroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method private initializeViews()V
    .locals 2

    .line 222
    new-instance v0, Lcom/zui/gallery/ui/SlideshowView;

    invoke-direct {v0}, Lcom/zui/gallery/ui/SlideshowView;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/app/SlideshowPage;->mSlideshowView:Lcom/zui/gallery/ui/SlideshowView;

    .line 223
    iget-object v1, p0, Lcom/zui/gallery/app/SlideshowPage;->mRootPane:Lcom/zui/gallery/ui/GLView;

    invoke-virtual {v1, v0}, Lcom/zui/gallery/ui/GLView;->addComponent(Lcom/zui/gallery/ui/GLView;)V

    .line 224
    iget-object v0, p0, Lcom/zui/gallery/app/SlideshowPage;->mRootPane:Lcom/zui/gallery/ui/GLView;

    invoke-virtual {p0, v0}, Lcom/zui/gallery/app/SlideshowPage;->setContentPane(Lcom/zui/gallery/ui/GLView;)V

    return-void
.end method

.method private loadNextBitmap()V
    .locals 2

    .line 144
    iget-object v0, p0, Lcom/zui/gallery/app/SlideshowPage;->mModel:Lcom/zui/gallery/app/SlideshowPage$Model;

    new-instance v1, Lcom/zui/gallery/app/SlideshowPage$3;

    invoke-direct {v1, p0}, Lcom/zui/gallery/app/SlideshowPage$3;-><init>(Lcom/zui/gallery/app/SlideshowPage;)V

    invoke-interface {v0, v1}, Lcom/zui/gallery/app/SlideshowPage$Model;->nextSlide(Lcom/zui/gallery/util/FutureListener;)Lcom/zui/gallery/util/Future;

    return-void
.end method

.method private showPendingBitmap()V
    .locals 5

    .line 157
    iget-object v0, p0, Lcom/zui/gallery/app/SlideshowPage;->mPendingSlide:Lcom/zui/gallery/app/SlideshowPage$Slide;

    if-nez v0, :cond_1

    .line 159
    iget-boolean v0, p0, Lcom/zui/gallery/app/SlideshowPage;->mIsActive:Z

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/zui/gallery/app/SlideshowPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getStateManager()Lcom/zui/gallery/app/StateManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zui/gallery/app/StateManager;->finishState(Lcom/zui/gallery/app/ActivityState;)V

    :cond_0
    return-void

    .line 165
    :cond_1
    iget-object v1, p0, Lcom/zui/gallery/app/SlideshowPage;->mSlideshowView:Lcom/zui/gallery/ui/SlideshowView;

    iget-object v2, v0, Lcom/zui/gallery/app/SlideshowPage$Slide;->bitmap:Landroid/graphics/Bitmap;

    iget-object v3, v0, Lcom/zui/gallery/app/SlideshowPage$Slide;->item:Lcom/zui/gallery/data/MediaItem;

    invoke-virtual {v3}, Lcom/zui/gallery/data/MediaItem;->getRotation()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/zui/gallery/ui/SlideshowView;->next(Landroid/graphics/Bitmap;I)V

    const/4 v1, -0x1

    .line 167
    iget-object v2, p0, Lcom/zui/gallery/app/SlideshowPage;->mResultIntent:Landroid/content/Intent;

    iget-object v3, v0, Lcom/zui/gallery/app/SlideshowPage$Slide;->item:Lcom/zui/gallery/data/MediaItem;

    .line 168
    invoke-virtual {v3}, Lcom/zui/gallery/data/MediaItem;->getPath()Lcom/zui/gallery/data/Path;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zui/gallery/data/Path;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "media-item-path"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    iget v0, v0, Lcom/zui/gallery/app/SlideshowPage$Slide;->index:I

    const-string v3, "photo-index"

    .line 169
    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 167
    invoke-virtual {p0, v1, v0}, Lcom/zui/gallery/app/SlideshowPage;->setStateResult(ILandroid/content/Intent;)V

    .line 170
    iget-object v0, p0, Lcom/zui/gallery/app/SlideshowPage;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method


# virtual methods
.method protected getBackgroundColorId(Landroid/os/Bundle;)I
    .locals 0

    const p1, 0x7f0501a8

    return p1
.end method

.method public onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 1

    .line 115
    invoke-super {p0, p1, p2}, Lcom/zui/gallery/app/ActivityState;->onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 116
    iget p2, p0, Lcom/zui/gallery/app/SlideshowPage;->mFlags:I

    or-int/lit8 p2, p2, 0x3

    iput p2, p0, Lcom/zui/gallery/app/SlideshowPage;->mFlags:I

    const-string p2, "dream"

    .line 117
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 119
    iget p2, p0, Lcom/zui/gallery/app/SlideshowPage;->mFlags:I

    or-int/lit8 p2, p2, 0x24

    iput p2, p0, Lcom/zui/gallery/app/SlideshowPage;->mFlags:I

    goto :goto_0

    .line 122
    :cond_0
    iget p2, p0, Lcom/zui/gallery/app/SlideshowPage;->mFlags:I

    or-int/lit8 p2, p2, 0x8

    iput p2, p0, Lcom/zui/gallery/app/SlideshowPage;->mFlags:I

    .line 125
    :goto_0
    new-instance p2, Lcom/zui/gallery/app/SlideshowPage$2;

    iget-object v0, p0, Lcom/zui/gallery/app/SlideshowPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getGLRoot()Lcom/zui/gallery/ui/GLRoot;

    move-result-object v0

    invoke-direct {p2, p0, v0}, Lcom/zui/gallery/app/SlideshowPage$2;-><init>(Lcom/zui/gallery/app/SlideshowPage;Lcom/zui/gallery/ui/GLRoot;)V

    iput-object p2, p0, Lcom/zui/gallery/app/SlideshowPage;->mHandler:Landroid/os/Handler;

    .line 139
    invoke-direct {p0}, Lcom/zui/gallery/app/SlideshowPage;->initializeViews()V

    .line 140
    invoke-direct {p0, p1}, Lcom/zui/gallery/app/SlideshowPage;->initializeData(Landroid/os/Bundle;)V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 175
    invoke-super {p0}, Lcom/zui/gallery/app/ActivityState;->onPause()V

    const/4 v0, 0x0

    .line 176
    iput-boolean v0, p0, Lcom/zui/gallery/app/SlideshowPage;->mIsActive:Z

    .line 177
    iget-object v0, p0, Lcom/zui/gallery/app/SlideshowPage;->mModel:Lcom/zui/gallery/app/SlideshowPage$Model;

    invoke-interface {v0}, Lcom/zui/gallery/app/SlideshowPage$Model;->pause()V

    .line 178
    iget-object v0, p0, Lcom/zui/gallery/app/SlideshowPage;->mSlideshowView:Lcom/zui/gallery/ui/SlideshowView;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/SlideshowView;->release()V

    .line 180
    iget-object v0, p0, Lcom/zui/gallery/app/SlideshowPage;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 181
    iget-object v0, p0, Lcom/zui/gallery/app/SlideshowPage;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 186
    invoke-super {p0}, Lcom/zui/gallery/app/ActivityState;->onResume()V

    const/4 v0, 0x1

    .line 187
    iput-boolean v0, p0, Lcom/zui/gallery/app/SlideshowPage;->mIsActive:Z

    .line 188
    iget-object v0, p0, Lcom/zui/gallery/app/SlideshowPage;->mModel:Lcom/zui/gallery/app/SlideshowPage$Model;

    invoke-interface {v0}, Lcom/zui/gallery/app/SlideshowPage$Model;->resume()V

    .line 190
    iget-object v0, p0, Lcom/zui/gallery/app/SlideshowPage;->mPendingSlide:Lcom/zui/gallery/app/SlideshowPage$Slide;

    if-eqz v0, :cond_0

    .line 191
    invoke-direct {p0}, Lcom/zui/gallery/app/SlideshowPage;->showPendingBitmap()V

    goto :goto_0

    .line 193
    :cond_0
    invoke-direct {p0}, Lcom/zui/gallery/app/SlideshowPage;->loadNextBitmap()V

    :goto_0
    return-void
.end method
