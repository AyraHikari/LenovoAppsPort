.class public Lcom/zui/gallery/app/AlbumAddPage;
.super Lcom/zui/gallery/app/ActivityState;
.source "AlbumAddPage.java"

# interfaces
.implements Lcom/zui/gallery/ui/SelectionManager$SelectionListener;
.implements Lcom/zui/gallery/data/MediaSet$SyncListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/app/AlbumAddPage$MyLoadingListener;
    }
.end annotation


# static fields
.field private static final BIT_LOADING_RELOAD:I = 0x1

.field private static final BIT_LOADING_SYNC:I = 0x2

.field public static final KEY_AUTO_SELECT_ALL:Ljava/lang/String; = "auto-select-all"

.field public static final KEY_EMPTY_ALBUM:Ljava/lang/String; = "empty-album"

.field public static final KEY_MEDIA_PATH:Ljava/lang/String; = "media-path"

.field public static final KEY_PARENT_MEDIA_PATH:Ljava/lang/String; = "parent-media-path"

.field public static final KEY_RESUME_ANIMATION:Ljava/lang/String; = "resume_animation"

.field public static final KEY_SET_CENTER:Ljava/lang/String; = "set-center"

.field public static final KEY_SHOW_CLUSTER_MENU:Ljava/lang/String; = "cluster-menu"

.field private static final MSG_ADD_COMPLETE:I = 0x4

.field private static final MSG_PICK_PHOTO:I = 0x0

.field private static final MSG_REMOVE_COMPLETE:I = 0x2

.field public static final REQUEST_PHOTO:I = 0x2

.field public static final SHOW_DIALOG_MAX_SIZE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AlbumAddPage"

.field private static final USER_DISTANCE_METER:F = 0.3f


# instance fields
.field private addGroupId:I

.field private alreadySelectPath:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/zui/gallery/data/Path;",
            ">;"
        }
    .end annotation
.end field

.field private animation:Landroid/view/animation/Animation;

.field private backUpImageView:Landroid/widget/ImageView;

.field private doneTextView:Landroid/widget/TextView;

.field private mAlbumDataAdapter:Lcom/zui/gallery/app/AlbumDataLoader;

.field private mAlbumView:Lcom/zui/gallery/ui/AlbumAddSlotRenderer;

.field private mGetContent:Z

.field private mHandler:Landroid/os/Handler;

.field private mInitialSynced:Z

.field private mIsActive:Z

.field private mLaunchedFromPhotoPage:Z

.field private mLoadingBits:I

.field private mLoadingFailed:Z

.field private mMediaSet:Lcom/zui/gallery/data/MediaSet;

.field private mMediaSetPath:Lcom/zui/gallery/data/Path;

.field private mOpenCenter:Lcom/zui/gallery/ui/RelativePosition;

.field private mParentMediaSetString:Ljava/lang/String;

.field private mPositionProvider:Lcom/zui/gallery/ui/PhotoFallbackEffect$PositionProvider;

.field private mProgressDialog:Lzui/app/ProgressDialogX;

.field private mResumeEffect:Lcom/zui/gallery/ui/PhotoFallbackEffect;

.field private final mRootPane:Lcom/zui/gallery/ui/GLView;

.field protected mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

.field private mSlotView:Lcom/zui/gallery/ui/SlotView;

.field private mSyncResult:I

.field private mSyncTask:Lcom/zui/gallery/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/zui/gallery/util/Future<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mUserDistance:F

.field private titleBarLeftContainer:Landroid/widget/LinearLayout;

.field private titleBarRightContainer:Landroid/widget/LinearLayout;

.field private titleTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 77
    invoke-direct {p0}, Lcom/zui/gallery/app/ActivityState;-><init>()V

    const/4 v0, 0x0

    .line 100
    iput-boolean v0, p0, Lcom/zui/gallery/app/AlbumAddPage;->mIsActive:Z

    const/4 v1, 0x0

    .line 114
    iput-object v1, p0, Lcom/zui/gallery/app/AlbumAddPage;->mSyncTask:Lcom/zui/gallery/util/Future;

    .line 117
    iput v0, p0, Lcom/zui/gallery/app/AlbumAddPage;->mLoadingBits:I

    .line 118
    iput-boolean v0, p0, Lcom/zui/gallery/app/AlbumAddPage;->mInitialSynced:Z

    .line 121
    new-instance v0, Lcom/zui/gallery/ui/RelativePosition;

    invoke-direct {v0}, Lcom/zui/gallery/ui/RelativePosition;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/app/AlbumAddPage;->mOpenCenter:Lcom/zui/gallery/ui/RelativePosition;

    .line 143
    new-instance v0, Lcom/zui/gallery/app/AlbumAddPage$1;

    invoke-direct {v0, p0}, Lcom/zui/gallery/app/AlbumAddPage$1;-><init>(Lcom/zui/gallery/app/AlbumAddPage;)V

    iput-object v0, p0, Lcom/zui/gallery/app/AlbumAddPage;->mPositionProvider:Lcom/zui/gallery/ui/PhotoFallbackEffect$PositionProvider;

    .line 172
    new-instance v0, Lcom/zui/gallery/app/AlbumAddPage$2;

    invoke-direct {v0, p0}, Lcom/zui/gallery/app/AlbumAddPage$2;-><init>(Lcom/zui/gallery/app/AlbumAddPage;)V

    iput-object v0, p0, Lcom/zui/gallery/app/AlbumAddPage;->mRootPane:Lcom/zui/gallery/ui/GLView;

    return-void
.end method

.method static synthetic access$000(Lcom/zui/gallery/app/AlbumAddPage;)Lcom/zui/gallery/ui/SlotView;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/zui/gallery/app/AlbumAddPage;->mSlotView:Lcom/zui/gallery/ui/SlotView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/zui/gallery/app/AlbumAddPage;)Lcom/zui/gallery/app/AlbumDataLoader;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/zui/gallery/app/AlbumAddPage;->mAlbumDataAdapter:Lcom/zui/gallery/app/AlbumDataLoader;

    return-object p0
.end method

.method static synthetic access$1102(Lcom/zui/gallery/app/AlbumAddPage;I)I
    .locals 0

    .line 77
    iput p1, p0, Lcom/zui/gallery/app/AlbumAddPage;->mSyncResult:I

    return p1
.end method

.method static synthetic access$1202(Lcom/zui/gallery/app/AlbumAddPage;Z)Z
    .locals 0

    .line 77
    iput-boolean p1, p0, Lcom/zui/gallery/app/AlbumAddPage;->mInitialSynced:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/zui/gallery/app/AlbumAddPage;I)V
    .locals 0

    .line 77
    invoke-direct {p0, p1}, Lcom/zui/gallery/app/AlbumAddPage;->clearLoadingBit(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/zui/gallery/app/AlbumAddPage;)Z
    .locals 0

    .line 77
    iget-boolean p0, p0, Lcom/zui/gallery/app/AlbumAddPage;->mLoadingFailed:Z

    return p0
.end method

.method static synthetic access$1402(Lcom/zui/gallery/app/AlbumAddPage;Z)Z
    .locals 0

    .line 77
    iput-boolean p1, p0, Lcom/zui/gallery/app/AlbumAddPage;->mLoadingFailed:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/zui/gallery/app/AlbumAddPage;Z)V
    .locals 0

    .line 77
    invoke-direct {p0, p1}, Lcom/zui/gallery/app/AlbumAddPage;->showSyncErrorIfNecessary(Z)V

    return-void
.end method

.method static synthetic access$1600(Lcom/zui/gallery/app/AlbumAddPage;I)V
    .locals 0

    .line 77
    invoke-direct {p0, p1}, Lcom/zui/gallery/app/AlbumAddPage;->setLoadingBit(I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/zui/gallery/app/AlbumAddPage;)I
    .locals 0

    .line 77
    iget p0, p0, Lcom/zui/gallery/app/AlbumAddPage;->addGroupId:I

    return p0
.end method

.method static synthetic access$1800(Lcom/zui/gallery/app/AlbumAddPage;)Landroid/os/Handler;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/zui/gallery/app/AlbumAddPage;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/zui/gallery/app/AlbumAddPage;Z)V
    .locals 0

    .line 77
    invoke-direct {p0, p1}, Lcom/zui/gallery/app/AlbumAddPage;->addPic(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/zui/gallery/app/AlbumAddPage;)Lcom/zui/gallery/ui/AlbumAddSlotRenderer;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/zui/gallery/app/AlbumAddPage;->mAlbumView:Lcom/zui/gallery/ui/AlbumAddSlotRenderer;

    return-object p0
.end method

.method static synthetic access$300(Lcom/zui/gallery/app/AlbumAddPage;)Lcom/zui/gallery/ui/RelativePosition;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/zui/gallery/app/AlbumAddPage;->mOpenCenter:Lcom/zui/gallery/ui/RelativePosition;

    return-object p0
.end method

.method static synthetic access$400(Lcom/zui/gallery/app/AlbumAddPage;)F
    .locals 0

    .line 77
    iget p0, p0, Lcom/zui/gallery/app/AlbumAddPage;->mUserDistance:F

    return p0
.end method

.method static synthetic access$500(Lcom/zui/gallery/app/AlbumAddPage;)Lcom/zui/gallery/ui/PhotoFallbackEffect;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/zui/gallery/app/AlbumAddPage;->mResumeEffect:Lcom/zui/gallery/ui/PhotoFallbackEffect;

    return-object p0
.end method

.method static synthetic access$502(Lcom/zui/gallery/app/AlbumAddPage;Lcom/zui/gallery/ui/PhotoFallbackEffect;)Lcom/zui/gallery/ui/PhotoFallbackEffect;
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/zui/gallery/app/AlbumAddPage;->mResumeEffect:Lcom/zui/gallery/ui/PhotoFallbackEffect;

    return-object p1
.end method

.method static synthetic access$600(Lcom/zui/gallery/app/AlbumAddPage;)Lzui/app/ProgressDialogX;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/zui/gallery/app/AlbumAddPage;->mProgressDialog:Lzui/app/ProgressDialogX;

    return-object p0
.end method

.method static synthetic access$700(Lcom/zui/gallery/app/AlbumAddPage;I)V
    .locals 0

    .line 77
    invoke-direct {p0, p1}, Lcom/zui/gallery/app/AlbumAddPage;->onDown(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/zui/gallery/app/AlbumAddPage;Z)V
    .locals 0

    .line 77
    invoke-direct {p0, p1}, Lcom/zui/gallery/app/AlbumAddPage;->onUp(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/zui/gallery/app/AlbumAddPage;I)V
    .locals 0

    .line 77
    invoke-direct {p0, p1}, Lcom/zui/gallery/app/AlbumAddPage;->onSingleTapUpForAdd(I)V

    return-void
.end method

.method private addPic(Z)V
    .locals 9

    .line 669
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 670
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 671
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 672
    sget-object v0, Lcom/zui/gallery/app/AlbumSetAddPage;->needAddPathMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 673
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 674
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zui/gallery/data/Path;

    .line 676
    iget-object v6, p0, Lcom/zui/gallery/app/AlbumAddPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getDataManager()Lcom/zui/gallery/data/DataManager;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/zui/gallery/data/DataManager;->getMediaObject(Lcom/zui/gallery/data/Path;)Lcom/zui/gallery/data/MediaObject;

    move-result-object v4

    .line 678
    invoke-virtual {v4}, Lcom/zui/gallery/data/MediaObject;->isMediaSet()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 679
    check-cast v4, Lcom/zui/gallery/data/LocalAlbum;

    .line 680
    invoke-virtual {v4}, Lcom/zui/gallery/data/LocalAlbum;->getCoverMediaItem()Lcom/zui/gallery/data/MediaItem;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zui/gallery/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v4

    .line 681
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 683
    :cond_2
    check-cast v4, Lcom/zui/gallery/data/MediaItem;

    .line 684
    invoke-virtual {v4}, Lcom/zui/gallery/data/MediaItem;->getMediaType()I

    move-result v6

    .line 686
    invoke-virtual {v4}, Lcom/zui/gallery/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v7

    .line 687
    instance-of v8, v4, Lcom/zui/gallery/data/CloudImage;

    if-eqz v8, :cond_3

    .line 688
    check-cast v4, Lcom/zui/gallery/data/CloudImage;

    invoke-virtual {v4}, Lcom/zui/gallery/data/CloudImage;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    const/4 v4, 0x2

    if-ne v6, v4, :cond_4

    .line 692
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 693
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 695
    :cond_4
    invoke-static {v6}, Lcom/zui/gallery/data/MediaObject;->isVideoType(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 696
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "-"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 697
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 698
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 708
    :cond_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x1

    if-lt v0, v1, :cond_6

    .line 709
    new-instance v0, Lzui/app/ProgressDialogX;

    iget-object v1, p0, Lcom/zui/gallery/app/AlbumAddPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-direct {v0, v1}, Lzui/app/ProgressDialogX;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zui/gallery/app/AlbumAddPage;->mProgressDialog:Lzui/app/ProgressDialogX;

    .line 710
    iget-object v1, p0, Lcom/zui/gallery/app/AlbumAddPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const v4, 0x7f100039

    invoke-virtual {v1, v4}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lzui/app/ProgressDialogX;->setMessage(Ljava/lang/CharSequence;)V

    .line 712
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumAddPage;->mProgressDialog:Lzui/app/ProgressDialogX;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lzui/app/ProgressDialogX;->setCancelable(Z)V

    .line 713
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumAddPage;->mProgressDialog:Lzui/app/ProgressDialogX;

    invoke-virtual {v0}, Lzui/app/ProgressDialogX;->show()V

    .line 716
    :cond_6
    new-instance v6, Lcom/zui/gallery/app/AlbumAddPage$6;

    move-object v0, v6

    move-object v1, p0

    move v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/zui/gallery/app/AlbumAddPage$6;-><init>(Lcom/zui/gallery/app/AlbumAddPage;Ljava/util/ArrayList;Ljava/util/ArrayList;ZLjava/util/List;)V

    .line 730
    invoke-virtual {v6}, Lcom/zui/gallery/app/AlbumAddPage$6;->start()V

    return-void
.end method

.method private clearLoadingBit(I)V
    .locals 2

    .line 588
    iget v0, p0, Lcom/zui/gallery/app/AlbumAddPage;->mLoadingBits:I

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p0, Lcom/zui/gallery/app/AlbumAddPage;->mLoadingBits:I

    if-nez p1, :cond_1

    .line 589
    iget-boolean p1, p0, Lcom/zui/gallery/app/AlbumAddPage;->mIsActive:Z

    if-eqz p1, :cond_1

    .line 590
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumAddPage;->mAlbumDataAdapter:Lcom/zui/gallery/app/AlbumDataLoader;

    invoke-virtual {p1}, Lcom/zui/gallery/app/AlbumDataLoader;->size()I

    move-result p1

    if-nez p1, :cond_0

    .line 591
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const/4 v0, 0x1

    const-string v1, "empty-album"

    .line 592
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v0, -0x1

    .line 593
    invoke-virtual {p0, v0, p1}, Lcom/zui/gallery/app/AlbumAddPage;->setStateResult(ILandroid/content/Intent;)V

    .line 594
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumAddPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getStateManager()Lcom/zui/gallery/app/StateManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/zui/gallery/app/StateManager;->finishState(Lcom/zui/gallery/app/ActivityState;)V

    .line 597
    :cond_0
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumAddPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/SelectionManager;->resetTotalCount()V

    .line 598
    invoke-direct {p0}, Lcom/zui/gallery/app/AlbumAddPage;->updateActionBarTitle()V

    :cond_1
    return-void
.end method

.method private initTitleBar()V
    .locals 4

    .line 739
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumAddPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getTitleBar()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f08036e

    .line 740
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f08036f

    .line 741
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/zui/gallery/app/AlbumAddPage;->titleBarLeftContainer:Landroid/widget/LinearLayout;

    const v1, 0x7f08036d

    .line 742
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/zui/gallery/app/AlbumAddPage;->titleTextView:Landroid/widget/TextView;

    .line 743
    iget-object v2, p0, Lcom/zui/gallery/app/AlbumAddPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060349

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 745
    iget-object v1, p0, Lcom/zui/gallery/app/AlbumAddPage;->mMediaSet:Lcom/zui/gallery/data/MediaSet;

    if-eqz v1, :cond_0

    .line 746
    invoke-virtual {v1}, Lcom/zui/gallery/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/zui/gallery/app/AlbumAddPage;->updateTItle(Ljava/lang/String;)V

    :cond_0
    const v1, 0x7f080370

    .line 749
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/zui/gallery/app/AlbumAddPage;->titleBarRightContainer:Landroid/widget/LinearLayout;

    const v1, 0x7f0802ce

    .line 750
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zui/gallery/app/AlbumAddPage;->doneTextView:Landroid/widget/TextView;

    .line 751
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumAddPage;->titleBarLeftContainer:Landroid/widget/LinearLayout;

    const v1, 0x7f080214

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zui/gallery/app/AlbumAddPage;->backUpImageView:Landroid/widget/ImageView;

    const v1, 0x7f07008b

    .line 752
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 753
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumAddPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const v1, 0x7f01000c

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/app/AlbumAddPage;->animation:Landroid/view/animation/Animation;

    return-void
.end method

.method private initializeData(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "media-path"

    .line 470
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/gallery/data/Path;->fromString(Ljava/lang/String;)Lcom/zui/gallery/data/Path;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/app/AlbumAddPage;->mMediaSetPath:Lcom/zui/gallery/data/Path;

    const-string v0, "parent-media-path"

    .line 471
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/app/AlbumAddPage;->mParentMediaSetString:Ljava/lang/String;

    const-string v0, "addGroupId"

    const/4 v1, -0x1

    .line 472
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/zui/gallery/app/AlbumAddPage;->addGroupId:I

    .line 473
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumAddPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getDataManager()Lcom/zui/gallery/data/DataManager;

    move-result-object p1

    iget-object v0, p0, Lcom/zui/gallery/app/AlbumAddPage;->mMediaSetPath:Lcom/zui/gallery/data/Path;

    invoke-virtual {p1, v0}, Lcom/zui/gallery/data/DataManager;->getMediaSet(Lcom/zui/gallery/data/Path;)Lcom/zui/gallery/data/MediaSet;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/app/AlbumAddPage;->mMediaSet:Lcom/zui/gallery/data/MediaSet;

    if-nez p1, :cond_0

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 475
    iget-object v1, p0, Lcom/zui/gallery/app/AlbumAddPage;->mMediaSetPath:Lcom/zui/gallery/data/Path;

    aput-object v1, p1, v0

    const-string v0, "MediaSet is null. Path = %s"

    invoke-static {v0, p1}, Lcom/zui/gallery/common/Utils;->fail(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 477
    :cond_0
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumAddPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    iget-object v0, p0, Lcom/zui/gallery/app/AlbumAddPage;->mMediaSet:Lcom/zui/gallery/data/MediaSet;

    invoke-virtual {p1, v0}, Lcom/zui/gallery/ui/SelectionManager;->setSourceMediaSet(Lcom/zui/gallery/data/MediaSet;)V

    .line 478
    new-instance p1, Lcom/zui/gallery/app/AlbumDataLoader;

    iget-object v0, p0, Lcom/zui/gallery/app/AlbumAddPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    iget-object v1, p0, Lcom/zui/gallery/app/AlbumAddPage;->mMediaSet:Lcom/zui/gallery/data/MediaSet;

    invoke-direct {p1, v0, v1}, Lcom/zui/gallery/app/AlbumDataLoader;-><init>(Lcom/zui/gallery/app/AbstractGalleryActivity;Lcom/zui/gallery/data/MediaSet;)V

    iput-object p1, p0, Lcom/zui/gallery/app/AlbumAddPage;->mAlbumDataAdapter:Lcom/zui/gallery/app/AlbumDataLoader;

    .line 479
    new-instance v0, Lcom/zui/gallery/app/AlbumAddPage$MyLoadingListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/zui/gallery/app/AlbumAddPage$MyLoadingListener;-><init>(Lcom/zui/gallery/app/AlbumAddPage;Lcom/zui/gallery/app/AlbumAddPage$1;)V

    invoke-virtual {p1, v0}, Lcom/zui/gallery/app/AlbumDataLoader;->setLoadingListener(Lcom/zui/gallery/app/LoadingListener;)V

    .line 480
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumAddPage;->mAlbumView:Lcom/zui/gallery/ui/AlbumAddSlotRenderer;

    iget-object v0, p0, Lcom/zui/gallery/app/AlbumAddPage;->mAlbumDataAdapter:Lcom/zui/gallery/app/AlbumDataLoader;

    invoke-virtual {p1, v0}, Lcom/zui/gallery/ui/AlbumAddSlotRenderer;->setModel(Lcom/zui/gallery/app/AlbumDataLoader;)V

    .line 482
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumAddPage;->mSlotView:Lcom/zui/gallery/ui/SlotView;

    iget-object v0, p0, Lcom/zui/gallery/app/AlbumAddPage;->mMediaSet:Lcom/zui/gallery/data/MediaSet;

    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaSet;->isPanoAlbum()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/zui/gallery/ui/SlotView;->setIsPanoAlbum(Z)V

    return-void
.end method

.method private initializeViews()V
    .locals 10

    .line 434
    new-instance v0, Lcom/zui/gallery/ui/SelectionManager;

    iget-object v1, p0, Lcom/zui/gallery/app/AlbumAddPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/zui/gallery/ui/SelectionManager;-><init>(Lcom/zui/gallery/app/AbstractGalleryActivity;Z)V

    iput-object v0, p0, Lcom/zui/gallery/app/AlbumAddPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    .line 435
    invoke-virtual {v0, p0}, Lcom/zui/gallery/ui/SelectionManager;->setSelectionListener(Lcom/zui/gallery/ui/SelectionManager$SelectionListener;)V

    .line 436
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumAddPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-static {v0}, Lcom/zui/gallery/app/Config$AlbumPage;->get(Landroid/content/Context;)Lcom/zui/gallery/app/Config$AlbumPage;

    move-result-object v0

    .line 437
    new-instance v1, Lcom/zui/gallery/ui/SlotView;

    iget-object v2, p0, Lcom/zui/gallery/app/AlbumAddPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    iget-object v3, v0, Lcom/zui/gallery/app/Config$AlbumPage;->slotViewSpec:Lcom/zui/gallery/ui/SlotView$Spec;

    invoke-direct {v1, v2, v3}, Lcom/zui/gallery/ui/SlotView;-><init>(Lcom/zui/gallery/app/AbstractGalleryActivity;Lcom/zui/gallery/ui/SlotView$Spec;)V

    iput-object v1, p0, Lcom/zui/gallery/app/AlbumAddPage;->mSlotView:Lcom/zui/gallery/ui/SlotView;

    .line 438
    new-instance v1, Lcom/zui/gallery/ui/AlbumAddSlotRenderer;

    iget-object v5, p0, Lcom/zui/gallery/app/AlbumAddPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    iget-object v6, p0, Lcom/zui/gallery/app/AlbumAddPage;->mSlotView:Lcom/zui/gallery/ui/SlotView;

    iget-object v7, p0, Lcom/zui/gallery/app/AlbumAddPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    iget v8, v0, Lcom/zui/gallery/app/Config$AlbumPage;->placeholderColor:I

    iget-object v9, v0, Lcom/zui/gallery/app/Config$AlbumPage;->labelSpec:Lcom/zui/gallery/ui/AlbumSlotRenderer$LabelSpec;

    move-object v4, v1

    invoke-direct/range {v4 .. v9}, Lcom/zui/gallery/ui/AlbumAddSlotRenderer;-><init>(Lcom/zui/gallery/app/AbstractGalleryActivity;Lcom/zui/gallery/ui/SlotView;Lcom/zui/gallery/ui/SelectionManager;ILcom/zui/gallery/ui/AlbumSlotRenderer$LabelSpec;)V

    iput-object v1, p0, Lcom/zui/gallery/app/AlbumAddPage;->mAlbumView:Lcom/zui/gallery/ui/AlbumAddSlotRenderer;

    .line 440
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumAddPage;->mSlotView:Lcom/zui/gallery/ui/SlotView;

    invoke-virtual {v0, v1}, Lcom/zui/gallery/ui/SlotView;->setSlotRenderer(Lcom/zui/gallery/ui/SlotView$SlotRenderer;)V

    .line 441
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumAddPage;->mRootPane:Lcom/zui/gallery/ui/GLView;

    iget-object v1, p0, Lcom/zui/gallery/app/AlbumAddPage;->mSlotView:Lcom/zui/gallery/ui/SlotView;

    invoke-virtual {v0, v1}, Lcom/zui/gallery/ui/GLView;->addComponent(Lcom/zui/gallery/ui/GLView;)V

    .line 442
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumAddPage;->mSlotView:Lcom/zui/gallery/ui/SlotView;

    new-instance v1, Lcom/zui/gallery/app/AlbumAddPage$4;

    invoke-direct {v1, p0}, Lcom/zui/gallery/app/AlbumAddPage$4;-><init>(Lcom/zui/gallery/app/AlbumAddPage;)V

    invoke-virtual {v0, v1}, Lcom/zui/gallery/ui/SlotView;->setListener(Lcom/zui/gallery/ui/SlotView$Listener;)V

    return-void
.end method

.method private onDown(I)V
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumAddPage;->mAlbumView:Lcom/zui/gallery/ui/AlbumAddSlotRenderer;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/ui/AlbumAddSlotRenderer;->setPressedIndex(I)V

    return-void
.end method

.method private onSingleTapUpForAdd(I)V
    .locals 2

    .line 275
    iget-boolean v0, p0, Lcom/zui/gallery/app/AlbumAddPage;->mGetContent:Z

    if-eqz v0, :cond_0

    return-void

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumAddPage;->mAlbumDataAdapter:Lcom/zui/gallery/app/AlbumDataLoader;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/app/AlbumDataLoader;->getMediaItem(I)Lcom/zui/gallery/data/MediaItem;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 281
    :cond_1
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumAddPage;->mMediaSet:Lcom/zui/gallery/data/MediaSet;

    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaSet;->getPath()Lcom/zui/gallery/data/Path;

    move-result-object v0

    invoke-virtual {p1}, Lcom/zui/gallery/data/MediaItem;->getPath()Lcom/zui/gallery/data/Path;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zui/gallery/app/AlbumSetAddPage;->togglePhoto(Lcom/zui/gallery/data/Path;Lcom/zui/gallery/data/Path;)V

    .line 284
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumAddPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {p1}, Lcom/zui/gallery/data/MediaItem;->getPath()Lcom/zui/gallery/data/Path;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/zui/gallery/ui/SelectionManager;->toggle(Lcom/zui/gallery/data/Path;)V

    .line 285
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumAddPage;->mSlotView:Lcom/zui/gallery/ui/SlotView;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/SlotView;->invalidate()V

    return-void
.end method

.method private onUp(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 261
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumAddPage;->mAlbumView:Lcom/zui/gallery/ui/AlbumAddSlotRenderer;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/zui/gallery/ui/AlbumAddSlotRenderer;->setPressedIndex(I)V

    goto :goto_0

    .line 263
    :cond_0
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumAddPage;->mAlbumView:Lcom/zui/gallery/ui/AlbumAddSlotRenderer;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/AlbumAddSlotRenderer;->setPressedUp()V

    :goto_0
    return-void
.end method

.method private onUpPressed()V
    .locals 3

    .line 244
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumAddPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getStateManager()Lcom/zui/gallery/app/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/app/StateManager;->getStateCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 245
    invoke-super {p0}, Lcom/zui/gallery/app/ActivityState;->onBackPressed()V

    goto :goto_0

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumAddPage;->mParentMediaSetString:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 247
    new-instance v0, Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/zui/gallery/app/AlbumAddPage;->getData()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 248
    iget-object v1, p0, Lcom/zui/gallery/app/AlbumAddPage;->mParentMediaSetString:Ljava/lang/String;

    const-string v2, "media-path"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    iget-object v1, p0, Lcom/zui/gallery/app/AlbumAddPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getStateManager()Lcom/zui/gallery/app/StateManager;

    move-result-object v1

    const-class v2, Lcom/zui/gallery/app/AlbumSetPage;

    invoke-virtual {v1, p0, v2, v0}, Lcom/zui/gallery/app/StateManager;->switchState(Lcom/zui/gallery/app/ActivityState;Ljava/lang/Class;Landroid/os/Bundle;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setLoadingBit(I)V
    .locals 1

    .line 584
    iget v0, p0, Lcom/zui/gallery/app/AlbumAddPage;->mLoadingBits:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/zui/gallery/app/AlbumAddPage;->mLoadingBits:I

    return-void
.end method

.method private showSyncErrorIfNecessary(Z)V
    .locals 2

    .line 576
    iget v0, p0, Lcom/zui/gallery/app/AlbumAddPage;->mLoadingBits:I

    if-nez v0, :cond_1

    iget v0, p0, Lcom/zui/gallery/app/AlbumAddPage;->mSyncResult:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/zui/gallery/app/AlbumAddPage;->mIsActive:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/zui/gallery/app/AlbumAddPage;->mAlbumDataAdapter:Lcom/zui/gallery/app/AlbumDataLoader;

    .line 577
    invoke-virtual {p1}, Lcom/zui/gallery/app/AlbumDataLoader;->size()I

    move-result p1

    if-nez p1, :cond_1

    .line 578
    :cond_0
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumAddPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const v0, 0x7f10027c

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 579
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_1
    return-void
.end method

.method private updateActionBarTitle()V
    .locals 6

    .line 609
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumAddPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 610
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumAddPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/SelectionManager;->getSelectedCount()I

    move-result v0

    .line 611
    iget-object v1, p0, Lcom/zui/gallery/app/AlbumAddPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {v1}, Lcom/zui/gallery/ui/SelectionManager;->getSelectImageItemCount()I

    move-result v1

    .line 612
    iget-object v2, p0, Lcom/zui/gallery/app/AlbumAddPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {v2}, Lcom/zui/gallery/ui/SelectionManager;->getSelectVideoItemCount()I

    move-result v2

    .line 613
    iget-object v3, p0, Lcom/zui/gallery/app/AlbumAddPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {v3}, Lcom/zui/gallery/ui/SelectionManager;->inSelectAllMode()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 614
    iget-object v3, p0, Lcom/zui/gallery/app/AlbumAddPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {v3}, Lcom/zui/gallery/ui/SelectionManager;->isSelectAll()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 615
    iget-object v1, p0, Lcom/zui/gallery/app/AlbumAddPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {v1}, Lcom/zui/gallery/ui/SelectionManager;->getImageItemCount()I

    move-result v1

    .line 616
    iget-object v2, p0, Lcom/zui/gallery/app/AlbumAddPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {v2}, Lcom/zui/gallery/ui/SelectionManager;->getVideoCount()I

    move-result v2

    goto :goto_0

    .line 620
    :cond_0
    iget-object v3, p0, Lcom/zui/gallery/app/AlbumAddPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {v3}, Lcom/zui/gallery/ui/SelectionManager;->getImageItemCount()I

    move-result v3

    sub-int v1, v3, v1

    .line 621
    iget-object v3, p0, Lcom/zui/gallery/app/AlbumAddPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {v3}, Lcom/zui/gallery/ui/SelectionManager;->getVideoCount()I

    move-result v3

    sub-int v2, v3, v2

    .line 624
    :cond_1
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AlbumAddPage, count="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",imageCount="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",videoCount="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "xiaodl"

    invoke-static {v4, v3}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lez v2, :cond_3

    if-lez v1, :cond_2

    .line 628
    iget-object v1, p0, Lcom/zui/gallery/app/AlbumAddPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100241

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-virtual {v1, v2, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 630
    :cond_2
    iget-object v1, p0, Lcom/zui/gallery/app/AlbumAddPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100243

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-virtual {v1, v2, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 633
    :cond_3
    iget-object v1, p0, Lcom/zui/gallery/app/AlbumAddPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100242

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-virtual {v1, v2, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 636
    :goto_1
    iget-object v2, p0, Lcom/zui/gallery/app/AlbumAddPage;->titleTextView:Landroid/widget/TextView;

    if-eqz v2, :cond_5

    if-gtz v0, :cond_4

    .line 638
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumAddPage;->mMediaSet:Lcom/zui/gallery/data/MediaSet;

    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 640
    :cond_4
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    :goto_2
    return-void
.end method

.method private updateSelectCountTitle()V
    .locals 6

    .line 517
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumAddPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/SelectionManager;->getSelectedCount()I

    move-result v0

    .line 518
    iget-object v1, p0, Lcom/zui/gallery/app/AlbumAddPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {v1}, Lcom/zui/gallery/ui/SelectionManager;->getSelectImageItemCount()I

    move-result v1

    .line 519
    iget-object v2, p0, Lcom/zui/gallery/app/AlbumAddPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {v2}, Lcom/zui/gallery/ui/SelectionManager;->getSelectVideoItemCount()I

    move-result v2

    .line 520
    iget-object v3, p0, Lcom/zui/gallery/app/AlbumAddPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {v3}, Lcom/zui/gallery/ui/SelectionManager;->getSelectContinuesFolderCount()I

    move-result v3

    .line 522
    iget-object v4, p0, Lcom/zui/gallery/app/AlbumAddPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {v4}, Lcom/zui/gallery/ui/SelectionManager;->inSelectAllMode()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 523
    iget-object v4, p0, Lcom/zui/gallery/app/AlbumAddPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {v4}, Lcom/zui/gallery/ui/SelectionManager;->isSelectAll()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 524
    iget-object v1, p0, Lcom/zui/gallery/app/AlbumAddPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {v1}, Lcom/zui/gallery/ui/SelectionManager;->getImageItemCount()I

    move-result v1

    .line 525
    iget-object v2, p0, Lcom/zui/gallery/app/AlbumAddPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {v2}, Lcom/zui/gallery/ui/SelectionManager;->getVideoCount()I

    move-result v2

    goto :goto_0

    .line 529
    :cond_0
    iget-object v4, p0, Lcom/zui/gallery/app/AlbumAddPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {v4}, Lcom/zui/gallery/ui/SelectionManager;->getImageItemCount()I

    move-result v4

    sub-int v1, v4, v1

    .line 530
    iget-object v4, p0, Lcom/zui/gallery/app/AlbumAddPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {v4}, Lcom/zui/gallery/ui/SelectionManager;->getVideoCount()I

    move-result v4

    sub-int v2, v4, v2

    :cond_1
    :goto_0
    const/4 v4, 0x0

    const/4 v5, 0x1

    if-lez v2, :cond_4

    if-gtz v1, :cond_3

    if-lez v3, :cond_2

    goto :goto_1

    .line 539
    :cond_2
    iget-object v1, p0, Lcom/zui/gallery/app/AlbumAddPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100243

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 537
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/zui/gallery/app/AlbumAddPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100241

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 542
    :cond_4
    iget-object v1, p0, Lcom/zui/gallery/app/AlbumAddPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100242

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 544
    :goto_2
    invoke-direct {p0, v0}, Lcom/zui/gallery/app/AlbumAddPage;->updateTItle(Ljava/lang/String;)V

    return-void
.end method

.method private updateTItle(Ljava/lang/String;)V
    .locals 1

    .line 734
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumAddPage;->titleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 735
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private updateTitileBar()V
    .locals 2

    .line 757
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumAddPage;->titleBarLeftContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 758
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumAddPage;->backUpImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 759
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumAddPage;->doneTextView:Landroid/widget/TextView;

    const v1, 0x7f1000e8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 760
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumAddPage;->titleBarLeftContainer:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/zui/gallery/app/AlbumAddPage$7;

    invoke-direct {v1, p0}, Lcom/zui/gallery/app/AlbumAddPage$7;-><init>(Lcom/zui/gallery/app/AlbumAddPage;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 766
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumAddPage;->titleBarRightContainer:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/zui/gallery/app/AlbumAddPage$8;

    invoke-direct {v1, p0}, Lcom/zui/gallery/app/AlbumAddPage$8;-><init>(Lcom/zui/gallery/app/AlbumAddPage;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 791
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumAddPage;->titleTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/zui/gallery/app/AlbumAddPage;->animation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 792
    invoke-virtual {p0}, Lcom/zui/gallery/app/AlbumAddPage;->updateTitleBarVisibility()V

    return-void
.end method


# virtual methods
.method public freeResources()V
    .locals 1

    .line 419
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumAddPage;->mAlbumView:Lcom/zui/gallery/ui/AlbumAddSlotRenderer;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/AlbumAddSlotRenderer;->pause()V

    return-void
.end method

.method protected getBackgroundColorId(Landroid/os/Bundle;)I
    .locals 0

    const p1, 0x7f0500b3

    return p1
.end method

.method protected onBackPressed()V
    .locals 3

    .line 225
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumAddPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 226
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumAddPage;->mMediaSet:Lcom/zui/gallery/data/MediaSet;

    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaSet;->getPath()Lcom/zui/gallery/data/Path;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/gallery/app/AlbumSetAddPage;->cleanAddPath(Lcom/zui/gallery/data/Path;)V

    .line 227
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumAddPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/SelectionManager;->inSelectAllMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumAddPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/SelectionManager;->reEnterSelectionMode()V

    goto :goto_0

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumAddPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zui/gallery/ui/SelectionManager;->getSelected(Z)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 231
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 232
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 233
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumAddPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/zui/gallery/ui/SelectionManager;->toggleAll(Ljava/util/Set;Z)Z

    .line 234
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumAddPage;->mSlotView:Lcom/zui/gallery/ui/SlotView;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/SlotView;->invalidate()V

    return-void

    .line 238
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/zui/gallery/app/AlbumAddPage;->onUpPressed()V

    .line 240
    :cond_2
    invoke-direct {p0}, Lcom/zui/gallery/app/AlbumAddPage;->onUpPressed()V

    return-void
.end method

.method protected onBottombarClicked(I)V
    .locals 0

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 378
    invoke-super {p0, p1}, Lcom/zui/gallery/app/ActivityState;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 379
    invoke-direct {p0}, Lcom/zui/gallery/app/AlbumAddPage;->initTitleBar()V

    .line 380
    invoke-direct {p0}, Lcom/zui/gallery/app/AlbumAddPage;->updateTitileBar()V

    .line 382
    iget-boolean p1, p0, Lcom/zui/gallery/app/AlbumAddPage;->mInitialSynced:Z

    const/4 v0, 0x2

    if-nez p1, :cond_0

    .line 383
    invoke-direct {p0, v0}, Lcom/zui/gallery/app/AlbumAddPage;->setLoadingBit(I)V

    .line 384
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumAddPage;->mMediaSet:Lcom/zui/gallery/data/MediaSet;

    invoke-virtual {p1, p0}, Lcom/zui/gallery/data/MediaSet;->requestSync(Lcom/zui/gallery/data/MediaSet$SyncListener;)Lcom/zui/gallery/util/Future;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/app/AlbumAddPage;->mSyncTask:Lcom/zui/gallery/util/Future;

    goto :goto_0

    .line 386
    :cond_0
    invoke-direct {p0, v0}, Lcom/zui/gallery/app/AlbumAddPage;->clearLoadingBit(I)V

    .line 388
    :goto_0
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumAddPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-static {p1}, Lcom/zui/gallery/app/Config$AlbumPage;->get(Landroid/content/Context;)Lcom/zui/gallery/app/Config$AlbumPage;

    move-result-object p1

    .line 389
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumAddPage;->mSlotView:Lcom/zui/gallery/ui/SlotView;

    iget-object p1, p1, Lcom/zui/gallery/app/Config$AlbumPage;->slotViewSpec:Lcom/zui/gallery/ui/SlotView$Spec;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/ui/SlotView;->setSlotSpec(Lcom/zui/gallery/ui/SlotView$Spec;)V

    .line 390
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumAddPage;->mAlbumView:Lcom/zui/gallery/ui/AlbumAddSlotRenderer;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/AlbumAddSlotRenderer;->resume()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 2

    .line 290
    invoke-super {p0, p1, p2}, Lcom/zui/gallery/app/ActivityState;->onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V

    const p2, 0x3e99999a    # 0.3f

    .line 291
    invoke-static {p2}, Lcom/zui/gallery/util/GalleryUtils;->meterToPixel(F)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/zui/gallery/app/AlbumAddPage;->mUserDistance:F

    .line 292
    invoke-direct {p0}, Lcom/zui/gallery/app/AlbumAddPage;->initializeViews()V

    .line 293
    invoke-direct {p0, p1}, Lcom/zui/gallery/app/AlbumAddPage;->initializeData(Landroid/os/Bundle;)V

    .line 294
    invoke-direct {p0}, Lcom/zui/gallery/app/AlbumAddPage;->initTitleBar()V

    const-string p2, "get-content"

    const/4 v0, 0x0

    .line 295
    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p0, Lcom/zui/gallery/app/AlbumAddPage;->mGetContent:Z

    if-nez p2, :cond_1

    .line 298
    iget-object p2, p0, Lcom/zui/gallery/app/AlbumAddPage;->mMediaSet:Lcom/zui/gallery/data/MediaSet;

    invoke-virtual {p2}, Lcom/zui/gallery/data/MediaSet;->getPath()Lcom/zui/gallery/data/Path;

    move-result-object p2

    invoke-static {p2}, Lcom/zui/gallery/app/AlbumSetAddPage;->getAddPath(Lcom/zui/gallery/data/Path;)Ljava/util/Set;

    move-result-object p2

    iput-object p2, p0, Lcom/zui/gallery/app/AlbumAddPage;->alreadySelectPath:Ljava/util/Set;

    if-eqz p2, :cond_0

    .line 299
    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    .line 300
    iget-object p2, p0, Lcom/zui/gallery/app/AlbumAddPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    iget-object v1, p0, Lcom/zui/gallery/app/AlbumAddPage;->alreadySelectPath:Ljava/util/Set;

    invoke-virtual {p2, v1, v0}, Lcom/zui/gallery/ui/SelectionManager;->toggleAll(Ljava/util/Set;Z)Z

    goto :goto_0

    .line 302
    :cond_0
    iget-object p2, p0, Lcom/zui/gallery/app/AlbumAddPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {p2}, Lcom/zui/gallery/ui/SelectionManager;->enterSelectionMode()V

    :goto_0
    const/4 p2, 0x0

    .line 304
    iput-object p2, p0, Lcom/zui/gallery/app/AlbumAddPage;->alreadySelectPath:Ljava/util/Set;

    :cond_1
    const-string p2, "auto-select-all"

    .line 307
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 308
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumAddPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/SelectionManager;->selectAll()V

    .line 310
    :cond_2
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumAddPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->hideEditBottomBar()V

    .line 311
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumAddPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p1, v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->showTab(Z)V

    .line 312
    new-instance p1, Lcom/zui/gallery/app/AlbumAddPage$3;

    iget-object p2, p0, Lcom/zui/gallery/app/AlbumAddPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getGLRoot()Lcom/zui/gallery/ui/GLRoot;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/zui/gallery/app/AlbumAddPage$3;-><init>(Lcom/zui/gallery/app/AlbumAddPage;Lcom/zui/gallery/ui/GLRoot;)V

    iput-object p1, p0, Lcom/zui/gallery/app/AlbumAddPage;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method protected onCreateActionBar(Landroid/view/Menu;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method protected onCustomScrollBarPostionChange(II)V
    .locals 1

    .line 818
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumAddPage;->mSlotView:Lcom/zui/gallery/ui/SlotView;

    if-eqz v0, :cond_0

    .line 819
    invoke-virtual {v0, p1, p2}, Lcom/zui/gallery/ui/SlotView;->onCustomScrollBarPostionChange(II)V

    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 426
    invoke-super {p0}, Lcom/zui/gallery/app/ActivityState;->onDestroy()V

    .line 427
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumAddPage;->mAlbumDataAdapter:Lcom/zui/gallery/app/AlbumDataLoader;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 428
    invoke-virtual {v0, v1}, Lcom/zui/gallery/app/AlbumDataLoader;->setLoadingListener(Lcom/zui/gallery/app/LoadingListener;)V

    .line 430
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumAddPage;->mAlbumView:Lcom/zui/gallery/ui/AlbumAddSlotRenderer;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/AlbumAddSlotRenderer;->destory()V

    return-void
.end method

.method protected onPause()V
    .locals 3

    .line 394
    invoke-super {p0}, Lcom/zui/gallery/app/ActivityState;->onPause()V

    const/4 v0, 0x0

    .line 395
    iput-boolean v0, p0, Lcom/zui/gallery/app/AlbumAddPage;->mIsActive:Z

    .line 399
    iget-object v1, p0, Lcom/zui/gallery/app/AlbumAddPage;->mAlbumView:Lcom/zui/gallery/ui/AlbumAddSlotRenderer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/zui/gallery/ui/AlbumAddSlotRenderer;->setSlotFilter(Lcom/zui/gallery/ui/AlbumSlotRenderer$SlotFilter;)V

    .line 400
    iget-object v1, p0, Lcom/zui/gallery/app/AlbumAddPage;->mAlbumDataAdapter:Lcom/zui/gallery/app/AlbumDataLoader;

    invoke-virtual {v1}, Lcom/zui/gallery/app/AlbumDataLoader;->pause()V

    .line 402
    iget-object v1, p0, Lcom/zui/gallery/app/AlbumAddPage;->mAlbumView:Lcom/zui/gallery/ui/AlbumAddSlotRenderer;

    invoke-virtual {v1}, Lcom/zui/gallery/ui/AlbumAddSlotRenderer;->pause()V

    .line 408
    iget-object v1, p0, Lcom/zui/gallery/app/AlbumAddPage;->mSyncTask:Lcom/zui/gallery/util/Future;

    if-eqz v1, :cond_0

    .line 409
    invoke-interface {v1}, Lcom/zui/gallery/util/Future;->cancel()V

    .line 410
    iput-object v2, p0, Lcom/zui/gallery/app/AlbumAddPage;->mSyncTask:Lcom/zui/gallery/util/Future;

    const/4 v1, 0x2

    .line 411
    invoke-direct {p0, v1}, Lcom/zui/gallery/app/AlbumAddPage;->clearLoadingBit(I)V

    .line 413
    :cond_0
    iget-object v1, p0, Lcom/zui/gallery/app/AlbumAddPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v1, v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->showTab(Z)V

    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 341
    invoke-super {p0}, Lcom/zui/gallery/app/ActivityState;->onResume()V

    const/4 v0, 0x1

    .line 342
    iput-boolean v0, p0, Lcom/zui/gallery/app/AlbumAddPage;->mIsActive:Z

    .line 344
    iget-object v1, p0, Lcom/zui/gallery/app/AlbumAddPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getTransitionStore()Lcom/zui/gallery/app/TransitionStore;

    move-result-object v1

    const-string v2, "resume_animation"

    invoke-virtual {v1, v2}, Lcom/zui/gallery/app/TransitionStore;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/ui/PhotoFallbackEffect;

    iput-object v1, p0, Lcom/zui/gallery/app/AlbumAddPage;->mResumeEffect:Lcom/zui/gallery/ui/PhotoFallbackEffect;

    if-eqz v1, :cond_0

    .line 346
    iget-object v2, p0, Lcom/zui/gallery/app/AlbumAddPage;->mAlbumView:Lcom/zui/gallery/ui/AlbumAddSlotRenderer;

    invoke-virtual {v2, v1}, Lcom/zui/gallery/ui/AlbumAddSlotRenderer;->setSlotFilter(Lcom/zui/gallery/ui/AlbumSlotRenderer$SlotFilter;)V

    .line 347
    iget-object v1, p0, Lcom/zui/gallery/app/AlbumAddPage;->mResumeEffect:Lcom/zui/gallery/ui/PhotoFallbackEffect;

    iget-object v2, p0, Lcom/zui/gallery/app/AlbumAddPage;->mPositionProvider:Lcom/zui/gallery/ui/PhotoFallbackEffect$PositionProvider;

    invoke-virtual {v1, v2}, Lcom/zui/gallery/ui/PhotoFallbackEffect;->setPositionProvider(Lcom/zui/gallery/ui/PhotoFallbackEffect$PositionProvider;)V

    .line 348
    iget-object v1, p0, Lcom/zui/gallery/app/AlbumAddPage;->mResumeEffect:Lcom/zui/gallery/ui/PhotoFallbackEffect;

    invoke-virtual {v1}, Lcom/zui/gallery/ui/PhotoFallbackEffect;->start()V

    .line 351
    :cond_0
    iget-object v1, p0, Lcom/zui/gallery/app/AlbumAddPage;->mRootPane:Lcom/zui/gallery/ui/GLView;

    invoke-virtual {p0, v1}, Lcom/zui/gallery/app/AlbumAddPage;->setContentPane(Lcom/zui/gallery/ui/GLView;)V

    .line 352
    invoke-direct {p0}, Lcom/zui/gallery/app/AlbumAddPage;->updateTitileBar()V

    .line 359
    invoke-direct {p0, v0}, Lcom/zui/gallery/app/AlbumAddPage;->setLoadingBit(I)V

    const/4 v1, 0x0

    .line 360
    iput-boolean v1, p0, Lcom/zui/gallery/app/AlbumAddPage;->mLoadingFailed:Z

    .line 361
    iget-object v2, p0, Lcom/zui/gallery/app/AlbumAddPage;->mAlbumDataAdapter:Lcom/zui/gallery/app/AlbumDataLoader;

    invoke-virtual {v2}, Lcom/zui/gallery/app/AlbumDataLoader;->resume()V

    .line 363
    iget-object v2, p0, Lcom/zui/gallery/app/AlbumAddPage;->mAlbumView:Lcom/zui/gallery/ui/AlbumAddSlotRenderer;

    invoke-virtual {v2}, Lcom/zui/gallery/ui/AlbumAddSlotRenderer;->resume()V

    .line 364
    iget-object v2, p0, Lcom/zui/gallery/app/AlbumAddPage;->mAlbumView:Lcom/zui/gallery/ui/AlbumAddSlotRenderer;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/zui/gallery/ui/AlbumAddSlotRenderer;->setPressedIndex(I)V

    .line 366
    iget-boolean v2, p0, Lcom/zui/gallery/app/AlbumAddPage;->mInitialSynced:Z

    if-nez v2, :cond_1

    const/4 v2, 0x2

    .line 367
    invoke-direct {p0, v2}, Lcom/zui/gallery/app/AlbumAddPage;->setLoadingBit(I)V

    .line 368
    iget-object v2, p0, Lcom/zui/gallery/app/AlbumAddPage;->mMediaSet:Lcom/zui/gallery/data/MediaSet;

    invoke-virtual {v2, p0}, Lcom/zui/gallery/data/MediaSet;->requestSync(Lcom/zui/gallery/data/MediaSet$SyncListener;)Lcom/zui/gallery/util/Future;

    move-result-object v2

    iput-object v2, p0, Lcom/zui/gallery/app/AlbumAddPage;->mSyncTask:Lcom/zui/gallery/util/Future;

    .line 370
    :cond_1
    iget-object v2, p0, Lcom/zui/gallery/app/AlbumAddPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->hideEditBottomBar()V

    .line 371
    iget-object v2, p0, Lcom/zui/gallery/app/AlbumAddPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v2, v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->showTab(Z)V

    .line 372
    iget-object v2, p0, Lcom/zui/gallery/app/AlbumAddPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v2, v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->showScrollBar(Z)V

    .line 373
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumAddPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0, v1, v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->initScrollBarMarginTopAndBottom(II)V

    return-void
.end method

.method protected onScrollBarMaxLengthAvailable(I)V
    .locals 1

    .line 825
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumAddPage;->mSlotView:Lcom/zui/gallery/ui/SlotView;

    if-eqz v0, :cond_0

    .line 826
    invoke-virtual {v0, p1}, Lcom/zui/gallery/ui/SlotView;->onScrollBarMaxLengthAvailable(I)V

    :cond_0
    return-void
.end method

.method public onSelectionChange(Lcom/zui/gallery/data/Path;Z)V
    .locals 0

    .line 513
    invoke-direct {p0}, Lcom/zui/gallery/app/AlbumAddPage;->updateSelectCountTitle()V

    return-void
.end method

.method public onSelectionModeChange(I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 505
    :cond_0
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumAddPage;->mRootPane:Lcom/zui/gallery/ui/GLView;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/GLView;->invalidate()V

    goto :goto_0

    .line 501
    :cond_1
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumAddPage;->mRootPane:Lcom/zui/gallery/ui/GLView;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/GLView;->invalidate()V

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 496
    invoke-virtual {p0, p1}, Lcom/zui/gallery/app/AlbumAddPage;->performHapticFeedback(I)V

    .line 497
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumAddPage;->mRootPane:Lcom/zui/gallery/ui/GLView;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/GLView;->invalidate()V

    :goto_0
    return-void
.end method

.method public onSyncDone(Lcom/zui/gallery/data/MediaSet;I)V
    .locals 2

    .line 549
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSyncDone: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/zui/gallery/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/zui/gallery/common/Utils;->maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " result="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AlbumAddPage"

    invoke-static {v0, p1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumAddPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    new-instance v0, Lcom/zui/gallery/app/AlbumAddPage$5;

    invoke-direct {v0, p0, p2}, Lcom/zui/gallery/app/AlbumAddPage$5;-><init>(Lcom/zui/gallery/app/AlbumAddPage;I)V

    invoke-virtual {p1, v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected stopScroll()V
    .locals 1

    .line 811
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumAddPage;->mSlotView:Lcom/zui/gallery/ui/SlotView;

    if-eqz v0, :cond_0

    .line 812
    invoke-virtual {v0}, Lcom/zui/gallery/ui/SlotView;->stopScrolling()V

    :cond_0
    return-void
.end method

.method protected updateTitleBarVisibility()V
    .locals 4

    .line 796
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumAddPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getHeadRoot()Landroid/view/View;

    move-result-object v0

    .line 797
    iget-object v1, p0, Lcom/zui/gallery/app/AlbumAddPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getConfiguration()Landroid/content/res/Configuration;

    iget-object v1, p0, Lcom/zui/gallery/app/AlbumAddPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getActivityOrientation()I

    move-result v1

    const v2, 0x7f0501dc

    const/4 v3, 0x2

    if-ne v3, v1, :cond_0

    .line 798
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 803
    :cond_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_0
    return-void
.end method
