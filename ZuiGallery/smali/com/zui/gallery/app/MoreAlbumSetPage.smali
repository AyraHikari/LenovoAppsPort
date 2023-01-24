.class public Lcom/zui/gallery/app/MoreAlbumSetPage;
.super Lcom/zui/gallery/app/ActivityState;
.source "MoreAlbumSetPage.java"

# interfaces
.implements Lcom/zui/gallery/ui/SelectionManager$SelectionListener;
.implements Lcom/zui/gallery/app/EyePosition$EyePositionListener;
.implements Lcom/zui/gallery/data/MediaSet$SyncListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/app/MoreAlbumSetPage$MyLoadingListener;,
        Lcom/zui/gallery/app/MoreAlbumSetPage$QueryCSContentSyncTask;,
        Lcom/zui/gallery/app/MoreAlbumSetPage$QueryCloudSyncSyncTask;
    }
.end annotation


# static fields
.field private static final BIT_LOADING_RELOAD:I = 0x1

.field private static final BIT_LOADING_SYNC:I = 0x2

.field private static final CS_AUTO_SYNC_SWITCH_STATUS_URI:Ljava/lang/String;

.field private static final CS_IMAGES_STATUS_URI:Ljava/lang/String;

.field private static final DATA_CACHE_SIZE:I = 0x60

.field public static final KEY_ADD_PHOTO_GROUP_ID:Ljava/lang/String; = "addGroupId"

.field public static final KEY_ALBUM_PATH:Ljava/lang/String; = "album-path"

.field private static final KEY_HAS_SHOWED_CLOUDSYNC_TIPS:Ljava/lang/String; = "has_show_cloudsync_tips"

.field public static final KEY_MEDIA_IMAGE_IDS:Ljava/lang/String; = "media-image-ids"

.field public static final KEY_MEDIA_PATH:Ljava/lang/String; = "media-path"

.field public static final KEY_MEDIA_VIDEO_IDS:Ljava/lang/String; = "media-video-ids"

.field public static final KEY_SET_SUBTITLE:Ljava/lang/String; = "set-subtitle"

.field public static final KEY_SET_TITLE:Ljava/lang/String; = "set-title"

.field private static final MSG_ADD_COMPLETE:I = 0x2

.field private static final MSG_FINISH_MOVE_FOLDER:I = 0x4

.field private static final MSG_FINISH_REORDER_FOLDER:I = 0x5

.field private static final MSG_GROUP_SYNC:I = 0x3

.field private static final MSG_PICK_ALBUM:I = 0x1

.field private static final MSG_REQUEST_LAYOUT:I = 0x6

.field private static final REQUEST_DO_ANIMATION:I = 0x1

.field private static final REQUEST_EDIT:I = 0x4

.field public static final SHOW_DIALOG_MAX_SIZE:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "AlbumSetPage"

.field private static cloudSyncContentHopUri:Ljava/lang/String;


# instance fields
.field private animation:Landroid/view/animation/Animation;

.field coberver:Landroid/database/ContentObserver;

.field private leftBackUpImageView:Landroid/widget/ImageView;

.field private leftTextView:Landroid/widget/TextView;

.field private longTapItem:Lcom/zui/gallery/data/MediaSet;

.field private longTapItemAbslateRect:Landroid/graphics/Rect;

.field protected mActionBar:Lcom/zui/gallery/app/GalleryActionBar;

.field private mActionModeHandler:Lcom/zui/gallery/ui/ActionModeHandler;

.field private mAlbumSetDataAdapter:Lcom/zui/gallery/app/AlbumSetDataLoader;

.field private mAlbumSetView:Lcom/zui/gallery/ui/AlbumSetSlotRenderer;

.field private mCameraButton:Landroid/widget/Button;

.field private mConfig:Lcom/zui/gallery/app/Config$AlbumSetPage;

.field private mConfirmDialogListener:Lcom/zui/gallery/ui/MenuExecutor$ProgressListener;

.field private mCreateFolderDialog:Lzui/app/MessageDialog;

.field protected mData:Landroid/os/Bundle;

.field mEmptyAlbumToast:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/Toast;",
            ">;"
        }
    .end annotation
.end field

.field private mEmptyImage:Landroid/widget/ImageView;

.field private mEyePosition:Lcom/zui/gallery/app/EyePosition;

.field private mFloatDialog:Lzui/app/FloatDialog;

.field protected mGetAlbum:Z

.field protected mGetContent:Z

.field private mHandler:Landroid/os/Handler;

.field private mInitialSynced:Z

.field private mIsActive:Z

.field private mLoadingBits:I

.field private mMediaSet:Lcom/zui/gallery/data/MediaSet;

.field private mMoveAndReorderAnimationFlag:Z

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private final mRootPane:Lcom/zui/gallery/ui/GLView;

.field protected mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

.field private mShowDetails:Z

.field private mShowedEmptyToastForSelf:Z

.field private mSlotView:Lcom/zui/gallery/ui/AlbumSetSlotView;

.field private mStatusBarHeight:I

.field private mSyncTask:Lcom/zui/gallery/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/zui/gallery/util/Future<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mX:F

.field private mY:F

.field private mZ:F

.field private renameFolderDialog:Lzui/app/MessageDialog;

.field private rightNewFolderImageView:Landroid/widget/ImageView;

.field private rightSelectImageView:Landroid/widget/ImageView;

.field private rightTextView:Landroid/widget/TextView;

.field private settingView:Landroid/view/View;

.field private subTitleTextView:Landroid/widget/TextView;

.field private titleBarLeftContainer:Landroid/widget/LinearLayout;

.field private titleBarRightContainer:Landroid/widget/LinearLayout;

.field private titleTextView:Landroid/widget/TextView;

.field private typeBits:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 215
    invoke-static {}, Lcom/zui/gallery/cloud/CloudUtils;->isOldCloudServiceExist()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "content://com.zui.cloudservice.option/photo_cloud_brief"

    goto :goto_0

    :cond_0
    const-string v0, "content://com.lenovo.leos.cloud.sync.option/photo_cloud_brief"

    :goto_0
    sput-object v0, Lcom/zui/gallery/app/MoreAlbumSetPage;->CS_IMAGES_STATUS_URI:Ljava/lang/String;

    .line 216
    invoke-static {}, Lcom/zui/gallery/cloud/CloudUtils;->isOldCloudServiceExist()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "content://com.zui.cloudservice.option/photo_backup_toggle"

    goto :goto_1

    :cond_1
    const-string v0, "content://com.lenovo.leos.cloud.sync.option/photo_backup_toggle"

    :goto_1
    sput-object v0, Lcom/zui/gallery/app/MoreAlbumSetPage;->CS_AUTO_SYNC_SWITCH_STATUS_URI:Ljava/lang/String;

    const-string v0, ""

    .line 217
    sput-object v0, Lcom/zui/gallery/app/MoreAlbumSetPage;->cloudSyncContentHopUri:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 104
    invoke-direct {p0}, Lcom/zui/gallery/app/ActivityState;-><init>()V

    const/4 v0, 0x0

    .line 138
    iput-boolean v0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mIsActive:Z

    const/4 v1, 0x0

    .line 170
    iput-object v1, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mSyncTask:Lcom/zui/gallery/util/Future;

    .line 172
    iput v0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mLoadingBits:I

    .line 173
    iput-boolean v0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mInitialSynced:Z

    .line 176
    iput-boolean v0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mShowedEmptyToastForSelf:Z

    .line 181
    iput-object v1, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 192
    iput-boolean v0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mMoveAndReorderAnimationFlag:Z

    .line 224
    new-instance v0, Lcom/zui/gallery/app/MoreAlbumSetPage$1;

    invoke-direct {v0, p0}, Lcom/zui/gallery/app/MoreAlbumSetPage$1;-><init>(Lcom/zui/gallery/app/MoreAlbumSetPage;)V

    iput-object v0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mRootPane:Lcom/zui/gallery/ui/GLView;

    .line 323
    iput-object v1, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mEmptyAlbumToast:Ljava/lang/ref/WeakReference;

    .line 808
    new-instance v0, Lcom/zui/gallery/app/MoreAlbumSetPage$4;

    iget-object v1, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/zui/gallery/app/MoreAlbumSetPage$4;-><init>(Lcom/zui/gallery/app/MoreAlbumSetPage;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->coberver:Landroid/database/ContentObserver;

    .line 1384
    new-instance v0, Lcom/zui/gallery/app/MoreAlbumSetPage$12;

    invoke-direct {v0, p0}, Lcom/zui/gallery/app/MoreAlbumSetPage$12;-><init>(Lcom/zui/gallery/app/MoreAlbumSetPage;)V

    iput-object v0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mConfirmDialogListener:Lcom/zui/gallery/ui/MenuExecutor$ProgressListener;

    return-void
.end method

.method static synthetic access$000(Lcom/zui/gallery/app/MoreAlbumSetPage;)Lcom/zui/gallery/app/EyePosition;
    .locals 0

    .line 104
    iget-object p0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mEyePosition:Lcom/zui/gallery/app/EyePosition;

    return-object p0
.end method

.method static synthetic access$100(Lcom/zui/gallery/app/MoreAlbumSetPage;)Z
    .locals 0

    .line 104
    iget-boolean p0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mShowDetails:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/zui/gallery/app/MoreAlbumSetPage;)Lcom/zui/gallery/ui/GLView;
    .locals 0

    .line 104
    iget-object p0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mRootPane:Lcom/zui/gallery/ui/GLView;

    return-object p0
.end method

.method static synthetic access$1200()Ljava/lang/String;
    .locals 1

    .line 104
    sget-object v0, Lcom/zui/gallery/app/MoreAlbumSetPage;->CS_AUTO_SYNC_SWITCH_STATUS_URI:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300()Ljava/lang/String;
    .locals 1

    .line 104
    sget-object v0, Lcom/zui/gallery/app/MoreAlbumSetPage;->CS_IMAGES_STATUS_URI:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/zui/gallery/app/MoreAlbumSetPage;I)V
    .locals 0

    .line 104
    invoke-direct {p0, p1}, Lcom/zui/gallery/app/MoreAlbumSetPage;->setVisibilityCloudSyncTips(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/zui/gallery/app/MoreAlbumSetPage;)Landroid/os/Handler;
    .locals 0

    .line 104
    iget-object p0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1602(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 104
    sput-object p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->cloudSyncContentHopUri:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/zui/gallery/app/MoreAlbumSetPage;Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;I)V
    .locals 0

    .line 104
    invoke-direct {p0, p1, p2}, Lcom/zui/gallery/app/MoreAlbumSetPage;->showRenameDialog(Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/zui/gallery/app/MoreAlbumSetPage;I)V
    .locals 0

    .line 104
    invoke-direct {p0, p1}, Lcom/zui/gallery/app/MoreAlbumSetPage;->onDown(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/zui/gallery/app/MoreAlbumSetPage;)Lcom/zui/gallery/ui/AlbumSetSlotRenderer;
    .locals 0

    .line 104
    iget-object p0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mAlbumSetView:Lcom/zui/gallery/ui/AlbumSetSlotRenderer;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/zui/gallery/app/MoreAlbumSetPage;Z)V
    .locals 0

    .line 104
    invoke-direct {p0, p1}, Lcom/zui/gallery/app/MoreAlbumSetPage;->onUp(Z)V

    return-void
.end method

.method static synthetic access$2100(Lcom/zui/gallery/app/MoreAlbumSetPage;)I
    .locals 0

    .line 104
    iget p0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->typeBits:I

    return p0
.end method

.method static synthetic access$2102(Lcom/zui/gallery/app/MoreAlbumSetPage;I)I
    .locals 0

    .line 104
    iput p1, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->typeBits:I

    return p1
.end method

.method static synthetic access$2202(Lcom/zui/gallery/app/MoreAlbumSetPage;Z)Z
    .locals 0

    .line 104
    iput-boolean p1, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mInitialSynced:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/zui/gallery/app/MoreAlbumSetPage;I)V
    .locals 0

    .line 104
    invoke-direct {p0, p1}, Lcom/zui/gallery/app/MoreAlbumSetPage;->clearLoadingBit(I)V

    return-void
.end method

.method static synthetic access$2400(Lcom/zui/gallery/app/MoreAlbumSetPage;)Z
    .locals 0

    .line 104
    iget-boolean p0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mIsActive:Z

    return p0
.end method

.method static synthetic access$2500(Lcom/zui/gallery/app/MoreAlbumSetPage;I)V
    .locals 0

    .line 104
    invoke-direct {p0, p1}, Lcom/zui/gallery/app/MoreAlbumSetPage;->setLoadingBit(I)V

    return-void
.end method

.method static synthetic access$2600(Lcom/zui/gallery/app/MoreAlbumSetPage;)Z
    .locals 0

    .line 104
    iget-boolean p0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mMoveAndReorderAnimationFlag:Z

    return p0
.end method

.method static synthetic access$2602(Lcom/zui/gallery/app/MoreAlbumSetPage;Z)Z
    .locals 0

    .line 104
    iput-boolean p1, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mMoveAndReorderAnimationFlag:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/zui/gallery/app/MoreAlbumSetPage;)Lzui/app/MessageDialog;
    .locals 0

    .line 104
    iget-object p0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mCreateFolderDialog:Lzui/app/MessageDialog;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/zui/gallery/app/MoreAlbumSetPage;)Lzui/app/MessageDialog;
    .locals 0

    .line 104
    iget-object p0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->renameFolderDialog:Lzui/app/MessageDialog;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/zui/gallery/app/MoreAlbumSetPage;)Lcom/zui/gallery/data/MediaSet;
    .locals 0

    .line 104
    iget-object p0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->longTapItem:Lcom/zui/gallery/data/MediaSet;

    return-object p0
.end method

.method static synthetic access$2902(Lcom/zui/gallery/app/MoreAlbumSetPage;Lcom/zui/gallery/data/MediaSet;)Lcom/zui/gallery/data/MediaSet;
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->longTapItem:Lcom/zui/gallery/data/MediaSet;

    return-object p1
.end method

.method static synthetic access$300(Lcom/zui/gallery/app/MoreAlbumSetPage;)Lcom/zui/gallery/ui/AlbumSetSlotView;
    .locals 0

    .line 104
    iget-object p0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mSlotView:Lcom/zui/gallery/ui/AlbumSetSlotView;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/zui/gallery/app/MoreAlbumSetPage;Lcom/zui/gallery/data/MediaSet;)V
    .locals 0

    .line 104
    invoke-direct {p0, p1}, Lcom/zui/gallery/app/MoreAlbumSetPage;->showRenameDialog(Lcom/zui/gallery/data/MediaSet;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/zui/gallery/app/MoreAlbumSetPage;)Lcom/zui/gallery/ui/ActionModeHandler;
    .locals 0

    .line 104
    iget-object p0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mActionModeHandler:Lcom/zui/gallery/ui/ActionModeHandler;

    return-object p0
.end method

.method static synthetic access$400(Lcom/zui/gallery/app/MoreAlbumSetPage;)F
    .locals 0

    .line 104
    iget p0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mX:F

    return p0
.end method

.method static synthetic access$500(Lcom/zui/gallery/app/MoreAlbumSetPage;)F
    .locals 0

    .line 104
    iget p0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mY:F

    return p0
.end method

.method static synthetic access$600(Lcom/zui/gallery/app/MoreAlbumSetPage;)F
    .locals 0

    .line 104
    iget p0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mZ:F

    return p0
.end method

.method static synthetic access$700(Lcom/zui/gallery/app/MoreAlbumSetPage;I)V
    .locals 0

    .line 104
    invoke-direct {p0, p1}, Lcom/zui/gallery/app/MoreAlbumSetPage;->pickAlbum(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/zui/gallery/app/MoreAlbumSetPage;)Landroid/app/ProgressDialog;
    .locals 0

    .line 104
    iget-object p0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object p0
.end method

.method static synthetic access$900(Lcom/zui/gallery/app/MoreAlbumSetPage;)V
    .locals 0

    .line 104
    invoke-direct {p0}, Lcom/zui/gallery/app/MoreAlbumSetPage;->moveFolderInDataBase()V

    return-void
.end method

.method private static albumShouldOpenInFilmstrip(Lcom/zui/gallery/data/MediaSet;)Z
    .locals 3

    .line 317
    invoke-virtual {p0}, Lcom/zui/gallery/data/MediaSet;->getMediaItemCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 318
    invoke-virtual {p0, v1, v2}, Lcom/zui/gallery/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    .line 320
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_1

    move v1, v2

    :cond_1
    return v1
.end method

.method private cleanupCameraButton()V
    .locals 2

    .line 544
    iget-object v0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mCameraButton:Landroid/widget/Button;

    if-nez v0, :cond_0

    return-void

    .line 546
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const v1, 0x7f0801bc

    .line 547
    invoke-virtual {v0, v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    if-nez v0, :cond_1

    return-void

    .line 550
    :cond_1
    iget-object v1, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mCameraButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 551
    iput-object v0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mCameraButton:Landroid/widget/Button;

    return-void
.end method

.method private cleanupEmptyImage()V
    .locals 2

    .line 584
    iget-object v0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mEmptyImage:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    return-void

    .line 586
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const v1, 0x7f0801bc

    .line 587
    invoke-virtual {v0, v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    if-nez v0, :cond_1

    return-void

    .line 590
    :cond_1
    iget-object v1, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mEmptyImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 591
    iput-object v0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mEmptyImage:Landroid/widget/ImageView;

    return-void
.end method

.method private clearLoadingBit(I)V
    .locals 4

    .line 609
    iget v0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mLoadingBits:I

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mLoadingBits:I

    const/4 v0, 0x0

    if-nez p1, :cond_5

    .line 610
    iget-boolean p1, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mIsActive:Z

    if-eqz p1, :cond_5

    .line 611
    iget-object p1, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mAlbumSetDataAdapter:Lcom/zui/gallery/app/AlbumSetDataLoader;

    invoke-virtual {p1}, Lcom/zui/gallery/app/AlbumSetDataLoader;->size()I

    move-result p1

    const/4 v1, 0x1

    if-nez p1, :cond_3

    .line 612
    instance-of p1, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;

    const/4 v2, -0x1

    const-string v3, "empty-album"

    if-eqz p1, :cond_1

    .line 617
    iget-object p1, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getStateManager()Lcom/zui/gallery/app/StateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/gallery/app/StateManager;->getStateCount()I

    move-result p1

    if-le p1, v1, :cond_0

    .line 618
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 619
    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 620
    invoke-virtual {p0, v2, p1}, Lcom/zui/gallery/app/MoreAlbumSetPage;->setStateResult(ILandroid/content/Intent;)V

    .line 621
    iget-object p1, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getStateManager()Lcom/zui/gallery/app/StateManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/zui/gallery/app/StateManager;->finishState(Lcom/zui/gallery/app/ActivityState;)V

    goto :goto_0

    .line 623
    :cond_0
    invoke-direct {p0, v0}, Lcom/zui/gallery/app/MoreAlbumSetPage;->updateSelectTextView(Z)V

    .line 625
    iput-boolean v1, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mShowedEmptyToastForSelf:Z

    .line 627
    iget-object p1, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mSlotView:Lcom/zui/gallery/ui/AlbumSetSlotView;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/AlbumSetSlotView;->invalidate()V

    :goto_0
    return-void

    .line 639
    :cond_1
    iget-object p1, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getStateManager()Lcom/zui/gallery/app/StateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/gallery/app/StateManager;->getStateCount()I

    move-result p1

    if-le p1, v1, :cond_2

    .line 640
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 641
    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 642
    invoke-virtual {p0, v2, p1}, Lcom/zui/gallery/app/MoreAlbumSetPage;->setStateResult(ILandroid/content/Intent;)V

    .line 643
    iget-object p1, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getStateManager()Lcom/zui/gallery/app/StateManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/zui/gallery/app/StateManager;->finishState(Lcom/zui/gallery/app/ActivityState;)V

    goto :goto_1

    .line 645
    :cond_2
    invoke-direct {p0, v0}, Lcom/zui/gallery/app/MoreAlbumSetPage;->updateSelectTextView(Z)V

    .line 647
    iput-boolean v1, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mShowedEmptyToastForSelf:Z

    .line 649
    iget-object p1, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mSlotView:Lcom/zui/gallery/ui/AlbumSetSlotView;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/AlbumSetSlotView;->invalidate()V

    :goto_1
    return-void

    .line 659
    :cond_3
    iget-object p1, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mMediaSet:Lcom/zui/gallery/data/MediaSet;

    if-eqz p1, :cond_5

    .line 660
    instance-of p1, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;

    if-eqz p1, :cond_4

    .line 661
    iget-object p1, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mAlbumSetDataAdapter:Lcom/zui/gallery/app/AlbumSetDataLoader;

    invoke-virtual {p1}, Lcom/zui/gallery/app/AlbumSetDataLoader;->isOnlySystemGallery()Z

    move-result p1

    xor-int/2addr p1, v1

    .line 662
    invoke-direct {p0, p1}, Lcom/zui/gallery/app/MoreAlbumSetPage;->updateSelectTextView(Z)V

    if-nez p1, :cond_5

    .line 664
    iget-object p1, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/SelectionManager;->inSelectionMode()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 665
    iget-object p1, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/SelectionManager;->leaveSelectionMode()V

    goto :goto_2

    .line 670
    :cond_4
    invoke-direct {p0, v1}, Lcom/zui/gallery/app/MoreAlbumSetPage;->updateSelectTextView(Z)V

    .line 684
    :cond_5
    :goto_2
    iget-boolean p1, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mShowedEmptyToastForSelf:Z

    if-eqz p1, :cond_6

    .line 685
    iput-boolean v0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mShowedEmptyToastForSelf:Z

    :cond_6
    return-void
.end method

.method private closeFloatDialog()V
    .locals 1

    .line 1717
    iget-object v0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mFloatDialog:Lzui/app/FloatDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lzui/app/FloatDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1718
    iget-object v0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mFloatDialog:Lzui/app/FloatDialog;

    invoke-virtual {v0}, Lzui/app/FloatDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method private getSelectedString()Ljava/lang/String;
    .locals 4

    .line 1069
    iget-object v0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/SelectionManager;->getSelectedCount()I

    move-result v0

    .line 1071
    iget-object v1, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0004

    invoke-virtual {v1, v2, v0}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 1072
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSlotCenter(I[I)V
    .locals 6

    .line 282
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 283
    iget-object v1, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mRootPane:Lcom/zui/gallery/ui/GLView;

    iget-object v2, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mSlotView:Lcom/zui/gallery/ui/AlbumSetSlotView;

    invoke-virtual {v1, v2, v0}, Lcom/zui/gallery/ui/GLView;->getBoundsOf(Lcom/zui/gallery/ui/GLView;Landroid/graphics/Rect;)Z

    .line 284
    iget-object v1, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mSlotView:Lcom/zui/gallery/ui/AlbumSetSlotView;

    invoke-virtual {v1, p1}, Lcom/zui/gallery/ui/AlbumSetSlotView;->getSlotRect(I)Landroid/graphics/Rect;

    move-result-object p1

    .line 285
    iget-object v1, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mSlotView:Lcom/zui/gallery/ui/AlbumSetSlotView;

    invoke-virtual {v1}, Lcom/zui/gallery/ui/AlbumSetSlotView;->getScrollX()I

    move-result v1

    .line 286
    iget-object v2, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mSlotView:Lcom/zui/gallery/ui/AlbumSetSlotView;

    invoke-virtual {v2}, Lcom/zui/gallery/ui/AlbumSetSlotView;->getScrollY()I

    move-result v2

    .line 287
    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget v4, p1, Landroid/graphics/Rect;->left:I

    iget v5, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    sub-int/2addr v3, v1

    const/4 v1, 0x0

    aput v3, p2, v1

    .line 288
    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, p1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sub-int/2addr v0, v2

    const/4 p1, 0x1

    aput v0, p2, p1

    return-void
.end method

.method private hideCameraButton()V
    .locals 2

    .line 561
    iget-object v0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mCameraButton:Landroid/widget/Button;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x8

    .line 563
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method

.method private hideEmptyAlbumToast()V
    .locals 1

    .line 340
    iget-object v0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mEmptyAlbumToast:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 341
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 343
    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    :cond_0
    return-void
.end method

.method private hideEmptyImage()V
    .locals 2

    .line 601
    iget-object v0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mEmptyImage:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x8

    .line 603
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private initTitleBar()V
    .locals 4

    .line 1534
    iget-object v0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getTitleBar()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f08036e

    .line 1535
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->subTitleTextView:Landroid/widget/TextView;

    const v1, 0x7f08036f

    .line 1536
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->titleBarLeftContainer:Landroid/widget/LinearLayout;

    const v1, 0x7f08036d

    .line 1537
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->titleTextView:Landroid/widget/TextView;

    .line 1538
    iget-object v2, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06034b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    const v1, 0x7f080370

    .line 1539
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->titleBarRightContainer:Landroid/widget/LinearLayout;

    const v1, 0x7f0802ce

    .line 1540
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->rightTextView:Landroid/widget/TextView;

    .line 1541
    iget-object v0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->titleBarRightContainer:Landroid/widget/LinearLayout;

    const v1, 0x7f0802cd

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->rightNewFolderImageView:Landroid/widget/ImageView;

    .line 1542
    iget-object v0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->titleBarRightContainer:Landroid/widget/LinearLayout;

    const v1, 0x7f0802ca

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->rightSelectImageView:Landroid/widget/ImageView;

    .line 1543
    iget-object v0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->titleBarLeftContainer:Landroid/widget/LinearLayout;

    const v1, 0x7f080214

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->leftBackUpImageView:Landroid/widget/ImageView;

    .line 1544
    iget-object v0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->titleBarLeftContainer:Landroid/widget/LinearLayout;

    const v1, 0x7f080215

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->leftTextView:Landroid/widget/TextView;

    .line 1545
    iget-object v0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->titleBarRightContainer:Landroid/widget/LinearLayout;

    const v1, 0x7f0802cb

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->settingView:Landroid/view/View;

    .line 1546
    iget-object v0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const v1, 0x7f01000c

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->animation:Landroid/view/animation/Animation;

    return-void
.end method

.method private initializeData(Landroid/os/Bundle;)V
    .locals 3

    .line 943
    iput-object p1, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mData:Landroid/os/Bundle;

    const-string v0, "media-path"

    .line 944
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 945
    iget-object v0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getDataManager()Lcom/zui/gallery/data/DataManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zui/gallery/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/zui/gallery/data/MediaSet;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mMediaSet:Lcom/zui/gallery/data/MediaSet;

    .line 946
    iget-object v1, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {v1, v0}, Lcom/zui/gallery/ui/SelectionManager;->setSourceMediaSet(Lcom/zui/gallery/data/MediaSet;)V

    .line 947
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initializeData mMediaSet:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mMediaSet:Lcom/zui/gallery/data/MediaSet;

    invoke-virtual {v1}, Lcom/zui/gallery/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mMediaSet:Lcom/zui/gallery/data/MediaSet;

    invoke-virtual {v1}, Lcom/zui/gallery/data/MediaSet;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mediaPath:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "cloudsyncLog"

    invoke-static {v0, p1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    new-instance p1, Lcom/zui/gallery/app/AlbumSetDataLoader;

    iget-object v0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    iget-object v1, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mMediaSet:Lcom/zui/gallery/data/MediaSet;

    const/16 v2, 0x60

    invoke-direct {p1, v0, v1, v2}, Lcom/zui/gallery/app/AlbumSetDataLoader;-><init>(Lcom/zui/gallery/app/AbstractGalleryActivity;Lcom/zui/gallery/data/MediaSet;I)V

    iput-object p1, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mAlbumSetDataAdapter:Lcom/zui/gallery/app/AlbumSetDataLoader;

    .line 950
    new-instance v0, Lcom/zui/gallery/app/MoreAlbumSetPage$MyLoadingListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/zui/gallery/app/MoreAlbumSetPage$MyLoadingListener;-><init>(Lcom/zui/gallery/app/MoreAlbumSetPage;Lcom/zui/gallery/app/MoreAlbumSetPage$1;)V

    invoke-virtual {p1, v0}, Lcom/zui/gallery/app/AlbumSetDataLoader;->setLoadingListener(Lcom/zui/gallery/app/LoadingListener;)V

    .line 951
    iget-object p1, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mAlbumSetView:Lcom/zui/gallery/ui/AlbumSetSlotRenderer;

    iget-object v0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mAlbumSetDataAdapter:Lcom/zui/gallery/app/AlbumSetDataLoader;

    invoke-virtual {p1, v0}, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->setModel(Lcom/zui/gallery/app/AlbumSetDataLoader;)V

    return-void
.end method

.method private initializeViews()V
    .locals 9

    .line 955
    new-instance v0, Lcom/zui/gallery/ui/SelectionManager;

    iget-object v1, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/zui/gallery/ui/SelectionManager;-><init>(Lcom/zui/gallery/app/AbstractGalleryActivity;Z)V

    iput-object v0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    .line 956
    invoke-virtual {v0, p0}, Lcom/zui/gallery/ui/SelectionManager;->setSelectionListener(Lcom/zui/gallery/ui/SelectionManager$SelectionListener;)V

    .line 958
    iget-object v0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-static {v0}, Lcom/zui/gallery/app/Config$AlbumSetPage;->get(Lcom/zui/gallery/app/AbstractGalleryActivity;)Lcom/zui/gallery/app/Config$AlbumSetPage;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mConfig:Lcom/zui/gallery/app/Config$AlbumSetPage;

    .line 959
    iget-object v0, v0, Lcom/zui/gallery/app/Config$AlbumSetPage;->slotViewSpec:Lcom/zui/gallery/ui/AlbumSetSlotView$Spec;

    const/4 v1, 0x0

    iput v1, v0, Lcom/zui/gallery/ui/AlbumSetSlotView$Spec;->categoryLabelHeight:I

    .line 960
    iget-object v0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mConfig:Lcom/zui/gallery/app/Config$AlbumSetPage;

    iget-object v0, v0, Lcom/zui/gallery/app/Config$AlbumSetPage;->slotViewSpec:Lcom/zui/gallery/ui/AlbumSetSlotView$Spec;

    iput v1, v0, Lcom/zui/gallery/ui/AlbumSetSlotView$Spec;->firstCategoryLabelHeight:I

    .line 964
    new-instance v0, Lcom/zui/gallery/ui/AlbumSetSlotView;

    iget-object v1, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    iget-object v2, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mConfig:Lcom/zui/gallery/app/Config$AlbumSetPage;

    iget-object v2, v2, Lcom/zui/gallery/app/Config$AlbumSetPage;->slotViewSpec:Lcom/zui/gallery/ui/AlbumSetSlotView$Spec;

    invoke-direct {v0, v1, v2}, Lcom/zui/gallery/ui/AlbumSetSlotView;-><init>(Lcom/zui/gallery/app/AbstractGalleryActivity;Lcom/zui/gallery/ui/AlbumSetSlotView$Spec;)V

    iput-object v0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mSlotView:Lcom/zui/gallery/ui/AlbumSetSlotView;

    .line 967
    new-instance v0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;

    iget-object v4, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    iget-object v5, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    iget-object v6, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mSlotView:Lcom/zui/gallery/ui/AlbumSetSlotView;

    iget-object v1, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mConfig:Lcom/zui/gallery/app/Config$AlbumSetPage;

    iget-object v7, v1, Lcom/zui/gallery/app/Config$AlbumSetPage;->labelSpec:Lcom/zui/gallery/ui/AlbumSetSlotRenderer$LabelSpec;

    iget-object v1, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mConfig:Lcom/zui/gallery/app/Config$AlbumSetPage;

    iget v8, v1, Lcom/zui/gallery/app/Config$AlbumSetPage;->placeholderColor:I

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;-><init>(Lcom/zui/gallery/app/AbstractGalleryActivity;Lcom/zui/gallery/ui/SelectionManager;Lcom/zui/gallery/ui/AlbumSetSlotView;Lcom/zui/gallery/ui/AlbumSetSlotRenderer$LabelSpec;I)V

    iput-object v0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mAlbumSetView:Lcom/zui/gallery/ui/AlbumSetSlotRenderer;

    .line 971
    iget-object v1, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mSlotView:Lcom/zui/gallery/ui/AlbumSetSlotView;

    invoke-virtual {v1, v0}, Lcom/zui/gallery/ui/AlbumSetSlotView;->setSlotRenderer(Lcom/zui/gallery/ui/AlbumSetSlotRenderer;)V

    .line 972
    new-instance v0, Lcom/zui/gallery/ui/ActionModeHandler;

    iget-object v1, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    iget-object v2, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    iget-object v3, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getEditTitleBar()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-direct {v0, v1, v2, v3}, Lcom/zui/gallery/ui/ActionModeHandler;-><init>(Lcom/zui/gallery/app/AbstractGalleryActivity;Lcom/zui/gallery/ui/SelectionManager;Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mActionModeHandler:Lcom/zui/gallery/ui/ActionModeHandler;

    .line 973
    iget-object v0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mRootPane:Lcom/zui/gallery/ui/GLView;

    iget-object v1, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mSlotView:Lcom/zui/gallery/ui/AlbumSetSlotView;

    invoke-virtual {v0, v1}, Lcom/zui/gallery/ui/GLView;->addComponent(Lcom/zui/gallery/ui/GLView;)V

    .line 974
    iget-object v0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mSlotView:Lcom/zui/gallery/ui/AlbumSetSlotView;

    new-instance v1, Lcom/zui/gallery/app/MoreAlbumSetPage$5;

    invoke-direct {v1, p0}, Lcom/zui/gallery/app/MoreAlbumSetPage$5;-><init>(Lcom/zui/gallery/app/MoreAlbumSetPage;)V

    invoke-virtual {v0, v1}, Lcom/zui/gallery/ui/AlbumSetSlotView;->setAlbumsetFolderNameOnclickListener(Lcom/zui/gallery/ui/AlbumSetSlotView$AlbumsetFolderNameOnclickListener;)V

    .line 985
    iget-object v0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mSlotView:Lcom/zui/gallery/ui/AlbumSetSlotView;

    new-instance v1, Lcom/zui/gallery/app/MoreAlbumSetPage$6;

    invoke-direct {v1, p0}, Lcom/zui/gallery/app/MoreAlbumSetPage$6;-><init>(Lcom/zui/gallery/app/MoreAlbumSetPage;)V

    invoke-virtual {v0, v1}, Lcom/zui/gallery/ui/AlbumSetSlotView;->setListener(Lcom/zui/gallery/ui/AlbumSetSlotView$Listener;)V

    return-void
.end method

.method private isFloatDialogShowing()Z
    .locals 1

    .line 1723
    iget-object v0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mFloatDialog:Lzui/app/FloatDialog;

    if-eqz v0, :cond_0

    .line 1724
    invoke-virtual {v0}, Lzui/app/FloatDialog;->isShowing()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private moveFolderInDataBase()V
    .locals 7

    .line 1358
    iget-object v0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zui/gallery/ui/SelectionManager;->getSelected(Z)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1359
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 1363
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1364
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1366
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zui/gallery/data/Path;

    .line 1367
    iget-object v5, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v5}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getDataManager()Lcom/zui/gallery/data/DataManager;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/zui/gallery/data/DataManager;->getMediaSet(Lcom/zui/gallery/data/Path;)Lcom/zui/gallery/data/MediaSet;

    move-result-object v5

    .line 1368
    invoke-virtual {v5}, Lcom/zui/gallery/data/MediaSet;->isGroupAlbum()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1369
    invoke-virtual {v5}, Lcom/zui/gallery/data/MediaSet;->isFavoriteAlbum()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1370
    invoke-virtual {v4}, Lcom/zui/gallery/data/Path;->getSuffix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1373
    :cond_2
    invoke-virtual {v5}, Lcom/zui/gallery/data/MediaSet;->isCameraRoll()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1374
    invoke-virtual {v4}, Lcom/zui/gallery/data/Path;->getSuffix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1379
    :cond_3
    iget-object v0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/zui/gallery/data/GroupBucketHelper;->batchDeleteWhite(Landroid/content/ContentResolver;Ljava/util/ArrayList;)V

    .line 1380
    iget-object v0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v3, v1}, Lcom/zui/gallery/data/GroupBucketHelper;->batchUpdateGroupWhiteState(Landroid/content/ContentResolver;Ljava/util/ArrayList;Z)V

    :cond_4
    :goto_1
    return-void
.end method

.method private onDown(I)V
    .locals 1

    .line 407
    iget-object v0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mAlbumSetView:Lcom/zui/gallery/ui/AlbumSetSlotRenderer;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->setPressedIndex(I)V

    return-void
.end method

.method private onUp(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 413
    iget-object p1, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mAlbumSetView:Lcom/zui/gallery/ui/AlbumSetSlotRenderer;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->setPressedIndex(I)V

    goto :goto_0

    .line 415
    :cond_0
    iget-object p1, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mAlbumSetView:Lcom/zui/gallery/ui/AlbumSetSlotRenderer;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->setPressedUp()V

    :goto_0
    return-void
.end method

.method private pickAlbum(I)V
    .locals 6

    .line 350
    const-class v0, Lcom/zui/gallery/app/MoreAlbumSetPage;

    iget-boolean v1, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mIsActive:Z

    if-nez v1, :cond_0

    return-void

    .line 353
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pickAlbum, slotIndex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AlbumSetPage"

    invoke-static {v2, v1}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    iget-object v1, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mAlbumSetDataAdapter:Lcom/zui/gallery/app/AlbumSetDataLoader;

    invoke-virtual {v1, p1}, Lcom/zui/gallery/app/AlbumSetDataLoader;->getMediaSet(I)Lcom/zui/gallery/data/MediaSet;

    move-result-object v1

    .line 357
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pickAlbum, targetSet = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_1

    return-void

    .line 361
    :cond_1
    invoke-direct {p0}, Lcom/zui/gallery/app/MoreAlbumSetPage;->hideEmptyAlbumToast()V

    .line 363
    invoke-virtual {v1}, Lcom/zui/gallery/data/MediaSet;->getPath()Lcom/zui/gallery/data/Path;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zui/gallery/data/Path;->toString()Ljava/lang/String;

    move-result-object v3

    .line 365
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pickAlbum, mediaPath = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    invoke-virtual {v1}, Lcom/zui/gallery/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "\u4e91\u76f8\u518c"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string/jumbo v5, "\u66f4\u591a"

    if-nez v2, :cond_8

    invoke-virtual {v1}, Lcom/zui/gallery/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_1

    .line 378
    :cond_2
    new-instance v2, Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/zui/gallery/app/MoreAlbumSetPage;->getData()Landroid/os/Bundle;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    const/4 v4, 0x2

    new-array v5, v4, [I

    .line 380
    invoke-direct {p0, p1, v5}, Lcom/zui/gallery/app/MoreAlbumSetPage;->getSlotCenter(I[I)V

    const-string p1, "set-center"

    .line 381
    invoke-virtual {v2, p1, v5}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 382
    iget-boolean p1, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mGetAlbum:Z

    if-eqz p1, :cond_3

    invoke-virtual {v1}, Lcom/zui/gallery/data/MediaSet;->isLeafAlbum()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 383
    iget-object p1, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    .line 384
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 385
    invoke-virtual {v1}, Lcom/zui/gallery/data/MediaSet;->getPath()Lcom/zui/gallery/data/Path;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/gallery/data/Path;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "album-path"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, -0x1

    .line 386
    invoke-virtual {p1, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 387
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto/16 :goto_2

    .line 388
    :cond_3
    invoke-virtual {v1}, Lcom/zui/gallery/data/MediaSet;->getSubMediaSetCount()I

    move-result p1

    const/4 v1, 0x1

    const-string v5, "media-path"

    if-lez p1, :cond_4

    .line 389
    invoke-virtual {v2, v5, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    iget-object p1, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getStateManager()Lcom/zui/gallery/app/StateManager;

    move-result-object p1

    invoke-virtual {p1, v0, v1, v2}, Lcom/zui/gallery/app/StateManager;->startStateForResult(Ljava/lang/Class;ILandroid/os/Bundle;)V

    goto :goto_2

    .line 393
    :cond_4
    invoke-virtual {v2, v5, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    iget-boolean p1, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mGetContent:Z

    if-eqz p1, :cond_7

    .line 396
    iget p1, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->typeBits:I

    const/4 v0, 0x5

    if-ne p1, v0, :cond_5

    move v4, v1

    goto :goto_0

    :cond_5
    const/4 v0, 0x6

    if-ne p1, v0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v4, 0x3

    :goto_0
    const-string/jumbo p1, "type-bits"

    .line 398
    invoke-virtual {v2, p1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 401
    :cond_7
    iget-object p1, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getStateManager()Lcom/zui/gallery/app/StateManager;

    move-result-object p1

    const-class v0, Lcom/zui/gallery/app/AlbumPage;

    invoke-virtual {p1, v0, v2}, Lcom/zui/gallery/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_2

    .line 367
    :cond_8
    :goto_1
    invoke-virtual {v1}, Lcom/zui/gallery/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 368
    sget-object p1, Lcom/zui/gallery/app/MoreAlbumSetPage;->cloudSyncContentHopUri:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_a

    .line 369
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x10000000

    .line 370
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 371
    sget-object v0, Lcom/zui/gallery/app/MoreAlbumSetPage;->cloudSyncContentHopUri:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 372
    iget-object v0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    .line 374
    :cond_9
    invoke-virtual {v1}, Lcom/zui/gallery/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 375
    iget-object p1, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getStateManager()Lcom/zui/gallery/app/StateManager;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/zui/gallery/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    :cond_a
    :goto_2
    return-void
.end method

.method private setLoadingBit(I)V
    .locals 1

    .line 716
    iget v0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mLoadingBits:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mLoadingBits:I

    return-void
.end method

.method private setVisibilityCloudSyncTips(I)V
    .locals 1

    .line 492
    iget-object v0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getCloudSyncTipsLayout()Landroid/view/View;

    move-result-object v0

    .line 493
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private setupCameraButton()Z
    .locals 4

    .line 518
    iget-object v0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-static {v0}, Lcom/zui/gallery/util/GalleryUtils;->isCameraAvailable(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 520
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const v2, 0x7f0801bc

    .line 521
    invoke-virtual {v0, v2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    if-nez v0, :cond_1

    return v1

    .line 525
    :cond_1
    new-instance v2, Landroid/widget/Button;

    iget-object v3, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-direct {v2, v3}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mCameraButton:Landroid/widget/Button;

    const v3, 0x7f100064

    .line 526
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 527
    iget-object v2, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mCameraButton:Landroid/widget/Button;

    const v3, 0x7f0701f3

    invoke-virtual {v2, v1, v3, v1, v1}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 529
    iget-object v1, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mCameraButton:Landroid/widget/Button;

    new-instance v2, Lcom/zui/gallery/app/MoreAlbumSetPage$3;

    invoke-direct {v2, p0}, Lcom/zui/gallery/app/MoreAlbumSetPage$3;-><init>(Lcom/zui/gallery/app/MoreAlbumSetPage;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 535
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xd

    .line 538
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 539
    iget-object v2, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mCameraButton:Landroid/widget/Button;

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    return v0
.end method

.method private setupEmptyImage()Z
    .locals 3

    .line 568
    iget-object v0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const v1, 0x7f0801bc

    .line 569
    invoke-virtual {v0, v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 573
    :cond_0
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mEmptyImage:Landroid/widget/ImageView;

    const v2, 0x7f07006a

    .line 574
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 575
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xd

    .line 578
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 579
    iget-object v2, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mEmptyImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    return v0
.end method

.method private showAddGroupDialog()V
    .locals 3

    .line 1176
    new-instance v0, Lzui/app/MessageDialog$Builder;

    iget-object v1, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    iget-object v2, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-static {v2}, Lcom/zui/gallery/util/GalleryUtils;->getCurrentMessageDialogTheme(Landroid/content/Context;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lzui/app/MessageDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f100037

    .line 1177
    invoke-virtual {v0, v1}, Lzui/app/MessageDialog$Builder;->setTitle(I)Lzui/app/MessageDialog$Builder;

    const/4 v1, 0x2

    .line 1178
    invoke-virtual {v0, v1}, Lzui/app/MessageDialog$Builder;->setMessageDialogType(I)Lzui/app/MessageDialog$Builder;

    const v1, 0x7f100042

    .line 1179
    invoke-virtual {v0, v1}, Lzui/app/MessageDialog$Builder;->setEditorHint(I)Lzui/app/MessageDialog$Builder;

    .line 1181
    iget-object v1, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    .line 1182
    invoke-virtual {v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10009d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/zui/gallery/app/MoreAlbumSetPage$8;

    invoke-direct {v2, p0}, Lcom/zui/gallery/app/MoreAlbumSetPage$8;-><init>(Lcom/zui/gallery/app/MoreAlbumSetPage;)V

    .line 1181
    invoke-virtual {v0, v1, v2}, Lzui/app/MessageDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lzui/app/MessageDialog$Builder;

    .line 1247
    iget-object v1, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    .line 1248
    invoke-virtual {v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100068

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/zui/gallery/app/MoreAlbumSetPage$9;

    invoke-direct {v2, p0}, Lcom/zui/gallery/app/MoreAlbumSetPage$9;-><init>(Lcom/zui/gallery/app/MoreAlbumSetPage;)V

    .line 1247
    invoke-virtual {v0, v1, v2}, Lzui/app/MessageDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lzui/app/MessageDialog$Builder;

    .line 1255
    invoke-virtual {v0}, Lzui/app/MessageDialog$Builder;->show()Lzui/app/MessageDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mCreateFolderDialog:Lzui/app/MessageDialog;

    const/4 v1, 0x0

    .line 1256
    invoke-virtual {v0, v1}, Lzui/app/MessageDialog;->setCanceledOnTouchOutside(Z)V

    .line 1257
    iget-object v0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mCreateFolderDialog:Lzui/app/MessageDialog;

    invoke-virtual {v0}, Lzui/app/MessageDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v2, 0x5

    .line 1258
    invoke-virtual {v0, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 1259
    iget-object v0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mCreateFolderDialog:Lzui/app/MessageDialog;

    invoke-virtual {v0}, Lzui/app/MessageDialog;->getEditor()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 1262
    iget-object v0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mCreateFolderDialog:Lzui/app/MessageDialog;

    new-instance v2, Lcom/zui/gallery/app/MoreAlbumSetPage$10;

    invoke-direct {v2, p0}, Lcom/zui/gallery/app/MoreAlbumSetPage$10;-><init>(Lcom/zui/gallery/app/MoreAlbumSetPage;)V

    invoke-virtual {v0, v2}, Lzui/app/MessageDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 1272
    iget-object v0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mCreateFolderDialog:Lzui/app/MessageDialog;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lzui/app/MessageDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1274
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1275
    iget-object v1, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mCreateFolderDialog:Lzui/app/MessageDialog;

    new-instance v2, Lcom/zui/gallery/app/MoreAlbumSetPage$11;

    invoke-direct {v2, p0, v0}, Lcom/zui/gallery/app/MoreAlbumSetPage$11;-><init>(Lcom/zui/gallery/app/MoreAlbumSetPage;Landroid/widget/Button;)V

    invoke-virtual {v1, v2}, Lzui/app/MessageDialog;->setEditorTextWatcher(Landroid/text/TextWatcher;)V

    :cond_0
    return-void
.end method

.method private showCameraButton()V
    .locals 2

    .line 555
    iget-object v0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mCameraButton:Landroid/widget/Button;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/zui/gallery/app/MoreAlbumSetPage;->setupCameraButton()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 557
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mCameraButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method

.method private showEmptyAlbumToast(I)V
    .locals 2

    .line 327
    iget-object v0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mEmptyAlbumToast:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 328
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 330
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    .line 334
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const v1, 0x7f10010b

    invoke-static {v0, v1, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 335
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mEmptyAlbumToast:Ljava/lang/ref/WeakReference;

    .line 336
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private showEmptyImage()V
    .locals 2

    .line 595
    iget-object v0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mEmptyImage:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/zui/gallery/app/MoreAlbumSetPage;->setupEmptyImage()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 597
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mEmptyImage:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private showFloatDialog()V
    .locals 10

    .line 1618
    iget-object v0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->longTapItem:Lcom/zui/gallery/data/MediaSet;

    if-eqz v0, :cond_5

    .line 1619
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 1620
    iget-object v2, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mSlotView:Lcom/zui/gallery/ui/AlbumSetSlotView;

    iget-object v3, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->longTapItem:Lcom/zui/gallery/data/MediaSet;

    invoke-virtual {v3}, Lcom/zui/gallery/data/MediaSet;->getPath()Lcom/zui/gallery/data/Path;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/zui/gallery/ui/AlbumSetSlotView;->setLongTapItemPath(Lcom/zui/gallery/data/Path;)V

    .line 1621
    iget-object v2, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1623
    iget-object v3, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->longTapItem:Lcom/zui/gallery/data/MediaSet;

    invoke-virtual {v3}, Lcom/zui/gallery/data/MediaSet;->isMediaSet()Z

    move-result v3

    const v4, 0x7f1000b9

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v3, :cond_1

    .line 1624
    iget-object v3, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->longTapItem:Lcom/zui/gallery/data/MediaSet;

    invoke-virtual {v3}, Lcom/zui/gallery/data/MediaSet;->isGroupAlbum()Z

    move-result v3

    if-ne v3, v6, :cond_0

    new-array v5, v5, [Ljava/lang/String;

    const v7, 0x7f100046

    .line 1625
    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v1

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v6

    goto :goto_0

    :cond_0
    new-array v5, v6, [Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    .line 1626
    :goto_0
    new-instance v1, Lzui/app/FloatDialog$Builder;

    iget-object v2, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-direct {v1, v2}, Lzui/app/FloatDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v6}, Lzui/app/FloatDialog$Builder;->setShowAsMenuPopup(Z)Lzui/app/FloatDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/zui/gallery/app/MoreAlbumSetPage$18;

    invoke-direct {v2, p0, v3}, Lcom/zui/gallery/app/MoreAlbumSetPage$18;-><init>(Lcom/zui/gallery/app/MoreAlbumSetPage;Z)V

    invoke-virtual {v1, v5, v2}, Lzui/app/FloatDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lzui/app/FloatDialog$Builder;

    move-result-object v1

    .line 1645
    invoke-virtual {v1, v0}, Lzui/app/FloatDialog$Builder;->setMaskWindowBackground(Landroid/graphics/drawable/Drawable;)Lzui/app/FloatDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lzui/app/FloatDialog$Builder;->create()Lzui/app/FloatDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mFloatDialog:Lzui/app/FloatDialog;

    goto/16 :goto_1

    .line 1647
    :cond_1
    iget-object v3, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->longTapItem:Lcom/zui/gallery/data/MediaSet;

    invoke-virtual {v3}, Lcom/zui/gallery/data/MediaSet;->getMediaType()I

    move-result v3

    const v7, 0x7f1000fa

    const/4 v8, 0x3

    const v9, 0x7f100254

    if-ne v3, v5, :cond_2

    new-array v3, v8, [Ljava/lang/String;

    .line 1649
    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v1

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v6

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v5

    .line 1650
    new-instance v1, Lzui/app/FloatDialog$Builder;

    iget-object v2, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-direct {v1, v2}, Lzui/app/FloatDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v6}, Lzui/app/FloatDialog$Builder;->setShowAsMenuPopup(Z)Lzui/app/FloatDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/zui/gallery/app/MoreAlbumSetPage$19;

    invoke-direct {v2, p0}, Lcom/zui/gallery/app/MoreAlbumSetPage$19;-><init>(Lcom/zui/gallery/app/MoreAlbumSetPage;)V

    invoke-virtual {v1, v3, v2}, Lzui/app/FloatDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lzui/app/FloatDialog$Builder;

    move-result-object v1

    .line 1664
    invoke-virtual {v1, v0}, Lzui/app/FloatDialog$Builder;->setMaskWindowBackground(Landroid/graphics/drawable/Drawable;)Lzui/app/FloatDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lzui/app/FloatDialog$Builder;->create()Lzui/app/FloatDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mFloatDialog:Lzui/app/FloatDialog;

    goto :goto_1

    .line 1665
    :cond_2
    invoke-static {v3}, Lcom/zui/gallery/util/GalleryUtils;->canVideoEditType(I)Z

    move-result v3

    if-eqz v3, :cond_3

    new-array v3, v8, [Ljava/lang/String;

    .line 1666
    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v1

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v6

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v5

    .line 1667
    new-instance v1, Lzui/app/FloatDialog$Builder;

    iget-object v2, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-direct {v1, v2}, Lzui/app/FloatDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v6}, Lzui/app/FloatDialog$Builder;->setShowAsMenuPopup(Z)Lzui/app/FloatDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/zui/gallery/app/MoreAlbumSetPage$20;

    invoke-direct {v2, p0}, Lcom/zui/gallery/app/MoreAlbumSetPage$20;-><init>(Lcom/zui/gallery/app/MoreAlbumSetPage;)V

    invoke-virtual {v1, v3, v2}, Lzui/app/FloatDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lzui/app/FloatDialog$Builder;

    move-result-object v1

    .line 1681
    invoke-virtual {v1, v0}, Lzui/app/FloatDialog$Builder;->setMaskWindowBackground(Landroid/graphics/drawable/Drawable;)Lzui/app/FloatDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lzui/app/FloatDialog$Builder;->create()Lzui/app/FloatDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mFloatDialog:Lzui/app/FloatDialog;

    goto :goto_1

    :cond_3
    new-array v3, v5, [Ljava/lang/String;

    .line 1683
    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v1

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v6

    .line 1684
    new-instance v1, Lzui/app/FloatDialog$Builder;

    iget-object v2, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-direct {v1, v2}, Lzui/app/FloatDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v6}, Lzui/app/FloatDialog$Builder;->setShowAsMenuPopup(Z)Lzui/app/FloatDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/zui/gallery/app/MoreAlbumSetPage$21;

    invoke-direct {v2, p0}, Lcom/zui/gallery/app/MoreAlbumSetPage$21;-><init>(Lcom/zui/gallery/app/MoreAlbumSetPage;)V

    invoke-virtual {v1, v3, v2}, Lzui/app/FloatDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lzui/app/FloatDialog$Builder;

    move-result-object v1

    .line 1696
    invoke-virtual {v1, v0}, Lzui/app/FloatDialog$Builder;->setMaskWindowBackground(Landroid/graphics/drawable/Drawable;)Lzui/app/FloatDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lzui/app/FloatDialog$Builder;->create()Lzui/app/FloatDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mFloatDialog:Lzui/app/FloatDialog;

    .line 1699
    :goto_1
    iget-object v0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mFloatDialog:Lzui/app/FloatDialog;

    new-instance v1, Lcom/zui/gallery/app/MoreAlbumSetPage$22;

    invoke-direct {v1, p0}, Lcom/zui/gallery/app/MoreAlbumSetPage$22;-><init>(Lcom/zui/gallery/app/MoreAlbumSetPage;)V

    invoke-virtual {v0, v1}, Lzui/app/FloatDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1707
    invoke-direct {p0}, Lcom/zui/gallery/app/MoreAlbumSetPage;->isFloatDialogShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1708
    invoke-direct {p0}, Lcom/zui/gallery/app/MoreAlbumSetPage;->closeFloatDialog()V

    .line 1710
    :cond_4
    iget-object v0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->longTapItemAbslateRect:Landroid/graphics/Rect;

    .line 1711
    iget-object v1, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mFloatDialog:Lzui/app/FloatDialog;

    invoke-virtual {v1, v0}, Lzui/app/FloatDialog;->showAtLocation(Landroid/graphics/Rect;)V

    :cond_5
    return-void
.end method

.method private showRenameDialog(Lcom/zui/gallery/data/MediaSet;)V
    .locals 3

    .line 1425
    iget-object v0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->renameFolderDialog:Lzui/app/MessageDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lzui/app/MessageDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    if-eqz p1, :cond_2

    .line 1426
    invoke-virtual {p1}, Lcom/zui/gallery/data/MediaSet;->isGroupAlbum()Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    .line 1428
    :cond_1
    new-instance v0, Lzui/app/MessageDialog$Builder;

    iget-object v1, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    iget-object v2, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-static {v2}, Lcom/zui/gallery/util/GalleryUtils;->getCurrentMessageDialogTheme(Landroid/content/Context;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lzui/app/MessageDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f100046

    .line 1429
    invoke-virtual {v0, v1}, Lzui/app/MessageDialog$Builder;->setTitle(I)Lzui/app/MessageDialog$Builder;

    const/4 v1, 0x2

    .line 1430
    invoke-virtual {v0, v1}, Lzui/app/MessageDialog$Builder;->setMessageDialogType(I)Lzui/app/MessageDialog$Builder;

    .line 1431
    invoke-virtual {p1}, Lcom/zui/gallery/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lzui/app/MessageDialog$Builder;->setEditorHint(Ljava/lang/CharSequence;)Lzui/app/MessageDialog$Builder;

    .line 1433
    iget-object v1, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    .line 1434
    invoke-virtual {v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10009d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/zui/gallery/app/MoreAlbumSetPage$13;

    invoke-direct {v2, p0, p1}, Lcom/zui/gallery/app/MoreAlbumSetPage$13;-><init>(Lcom/zui/gallery/app/MoreAlbumSetPage;Lcom/zui/gallery/data/MediaSet;)V

    .line 1433
    invoke-virtual {v0, v1, v2}, Lzui/app/MessageDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lzui/app/MessageDialog$Builder;

    .line 1452
    iget-object p1, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    .line 1453
    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f100068

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/zui/gallery/app/MoreAlbumSetPage$14;

    invoke-direct {v1, p0}, Lcom/zui/gallery/app/MoreAlbumSetPage$14;-><init>(Lcom/zui/gallery/app/MoreAlbumSetPage;)V

    .line 1452
    invoke-virtual {v0, p1, v1}, Lzui/app/MessageDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lzui/app/MessageDialog$Builder;

    .line 1460
    invoke-virtual {v0}, Lzui/app/MessageDialog$Builder;->show()Lzui/app/MessageDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->renameFolderDialog:Lzui/app/MessageDialog;

    const/4 v0, 0x0

    .line 1461
    invoke-virtual {p1, v0}, Lzui/app/MessageDialog;->setCanceledOnTouchOutside(Z)V

    .line 1462
    iget-object p1, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->renameFolderDialog:Lzui/app/MessageDialog;

    invoke-virtual {p1}, Lzui/app/MessageDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v1, 0x5

    .line 1463
    invoke-virtual {p1, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 1466
    iget-object p1, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->renameFolderDialog:Lzui/app/MessageDialog;

    new-instance v1, Lcom/zui/gallery/app/MoreAlbumSetPage$15;

    invoke-direct {v1, p0}, Lcom/zui/gallery/app/MoreAlbumSetPage$15;-><init>(Lcom/zui/gallery/app/MoreAlbumSetPage;)V

    invoke-virtual {p1, v1}, Lzui/app/MessageDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 1476
    iget-object p1, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->renameFolderDialog:Lzui/app/MessageDialog;

    const/4 v1, -0x1

    invoke-virtual {p1, v1}, Lzui/app/MessageDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1479
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1480
    iget-object v0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->renameFolderDialog:Lzui/app/MessageDialog;

    new-instance v1, Lcom/zui/gallery/app/MoreAlbumSetPage$16;

    invoke-direct {v1, p0, p1}, Lcom/zui/gallery/app/MoreAlbumSetPage$16;-><init>(Lcom/zui/gallery/app/MoreAlbumSetPage;Landroid/widget/Button;)V

    invoke-virtual {v0, v1}, Lzui/app/MessageDialog;->setEditorTextWatcher(Landroid/text/TextWatcher;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private showRenameDialog(Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;I)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1525
    iget-object p1, p1, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->album:Lcom/zui/gallery/data/MediaSet;

    .line 1526
    invoke-virtual {p1}, Lcom/zui/gallery/data/MediaSet;->isGroupAlbum()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1527
    invoke-direct {p0, p1}, Lcom/zui/gallery/app/MoreAlbumSetPage;->showRenameDialog(Lcom/zui/gallery/data/MediaSet;)V

    :cond_0
    return-void
.end method

.method private updateActionBarTitle()V
    .locals 4

    .line 701
    iget-object v0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 702
    iget-object v0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/SelectionManager;->getSelectedCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 704
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AlbumSetPage, selectedFolderCount="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "xiaodl"

    invoke-static {v2, v0}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_1

    .line 706
    iget-object v0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mActionModeHandler:Lcom/zui/gallery/ui/ActionModeHandler;

    invoke-direct {p0}, Lcom/zui/gallery/app/MoreAlbumSetPage;->getSelectedString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zui/gallery/ui/ActionModeHandler;->setTitle(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private updateSelectTextView(Z)V
    .locals 1

    .line 1415
    iget-object v0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->titleBarRightContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 1416
    iget-object v0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->isThirdAppCall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1417
    iget-object p1, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->rightSelectImageView:Landroid/widget/ImageView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_0

    .line 1419
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->rightSelectImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateTitleBar()V
    .locals 15

    .line 1550
    iget-object v0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->settingView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1551
    iget-object v0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mGetContent:Z

    if-eqz v0, :cond_7

    .line 1552
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->subTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1553
    iget-object v0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->titleTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->animation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1555
    iget-object v0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->titleTextView:Landroid/widget/TextView;

    const v2, 0x7f100153

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1556
    iget-object v3, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    iget-object v4, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->leftBackUpImageView:Landroid/widget/ImageView;

    const/16 v5, 0x10

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lcom/zui/gallery/util/GalleryUtils;->setViewMargin(Landroid/content/Context;Landroid/view/View;IIII)V

    .line 1557
    iget-object v9, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    iget-object v10, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->titleTextView:Landroid/widget/TextView;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v9 .. v14}, Lcom/zui/gallery/util/GalleryUtils;->setViewMargin(Landroid/content/Context;Landroid/view/View;IIII)V

    .line 1559
    iget-object v0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->rightNewFolderImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 1560
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1562
    :cond_1
    iget-object v0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->rightSelectImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 1563
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1566
    :cond_2
    iget-object v0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->titleBarLeftContainer:Landroid/widget/LinearLayout;

    const/4 v2, 0x1

    if-eqz v0, :cond_6

    .line 1567
    iget-object v0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->leftTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 1568
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1570
    :cond_3
    iget-object v0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->leftBackUpImageView:Landroid/widget/ImageView;

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    const v4, 0x7f07008b

    .line 1571
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1572
    iget-object v0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->leftBackUpImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1574
    :cond_4
    iget-object v0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->rightTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    const-string v4, ""

    .line 1575
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1576
    iget-object v0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->rightTextView:Landroid/widget/TextView;

    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1578
    :cond_5
    iget-object v0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->titleBarLeftContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 1579
    iget-object v0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->titleBarLeftContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1580
    iget-object v0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->titleBarLeftContainer:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/zui/gallery/app/MoreAlbumSetPage$17;

    invoke-direct {v3, p0}, Lcom/zui/gallery/app/MoreAlbumSetPage$17;-><init>(Lcom/zui/gallery/app/MoreAlbumSetPage;)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1587
    :cond_6
    iget-object v0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->titleBarRightContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_7

    const-string v0, "nixiangchidiansha"

    const-string/jumbo v3, "titleBarRightContainer.setVisibility(View.GONE);"

    .line 1588
    invoke-static {v0, v3}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1589
    iget-object v0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->titleBarRightContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1590
    iget-object v0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->titleBarRightContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 1591
    iget-object v0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->titleBarRightContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 1595
    :cond_7
    invoke-virtual {p0}, Lcom/zui/gallery/app/MoreAlbumSetPage;->updateTitleBarVisibility()V

    return-void
.end method


# virtual methods
.method public finishMoveFolderAnimation()V
    .locals 3

    .line 1350
    iget-object v0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public finishReorderAnimation()V
    .locals 3

    .line 1354
    iget-object v0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public freeResources()V
    .locals 1

    .line 751
    iget-object v0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mAlbumSetView:Lcom/zui/gallery/ui/AlbumSetSlotRenderer;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->pause()V

    return-void
.end method

.method protected getBackgroundColorId(Landroid/os/Bundle;)I
    .locals 0

    const p1, 0x7f0500b3

    return p1
.end method

.method public needShowEmptyImage()Z
    .locals 1

    .line 712
    iget-boolean v0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mShowedEmptyToastForSelf:Z

    return v0
.end method

.method public onBackPressed()V
    .locals 0

    .line 278
    invoke-super {p0}, Lcom/zui/gallery/app/ActivityState;->onBackPressed()V

    return-void
.end method

.method protected onBottombarClicked(I)V
    .locals 1

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 1333
    :sswitch_0
    iget-object p1, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mActionModeHandler:Lcom/zui/gallery/ui/ActionModeHandler;

    const v0, 0x7f0800ac

    invoke-virtual {p1, v0}, Lcom/zui/gallery/ui/ActionModeHandler;->OnBottomBarButtonClicked(I)V

    goto :goto_0

    .line 1328
    :sswitch_1
    invoke-direct {p0}, Lcom/zui/gallery/app/MoreAlbumSetPage;->moveFolderInDataBase()V

    .line 1329
    iget-object p1, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/SelectionManager;->leaveSelectionMode()V

    goto :goto_0

    .line 1339
    :sswitch_2
    iget-object p1, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mActionModeHandler:Lcom/zui/gallery/ui/ActionModeHandler;

    const v0, 0x7f0800a7

    invoke-virtual {p1, v0}, Lcom/zui/gallery/ui/ActionModeHandler;->OnBottomBarButtonClicked(I)V

    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0800a7 -> :sswitch_2
        0x7f0800ab -> :sswitch_1
        0x7f0800ac -> :sswitch_0
    .end sparse-switch
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 797
    invoke-super {p0, p1}, Lcom/zui/gallery/app/ActivityState;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 798
    invoke-direct {p0}, Lcom/zui/gallery/app/MoreAlbumSetPage;->initTitleBar()V

    .line 799
    invoke-direct {p0}, Lcom/zui/gallery/app/MoreAlbumSetPage;->updateTitleBar()V

    .line 801
    iget-object p1, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-static {p1}, Lcom/zui/gallery/app/Config$AlbumSetPage;->get(Lcom/zui/gallery/app/AbstractGalleryActivity;)Lcom/zui/gallery/app/Config$AlbumSetPage;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mConfig:Lcom/zui/gallery/app/Config$AlbumSetPage;

    .line 802
    iget-object p1, p1, Lcom/zui/gallery/app/Config$AlbumSetPage;->slotViewSpec:Lcom/zui/gallery/ui/AlbumSetSlotView$Spec;

    const/4 v0, 0x0

    iput v0, p1, Lcom/zui/gallery/ui/AlbumSetSlotView$Spec;->categoryLabelHeight:I

    .line 803
    iget-object p1, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mConfig:Lcom/zui/gallery/app/Config$AlbumSetPage;

    iget-object p1, p1, Lcom/zui/gallery/app/Config$AlbumSetPage;->slotViewSpec:Lcom/zui/gallery/ui/AlbumSetSlotView$Spec;

    iput v0, p1, Lcom/zui/gallery/ui/AlbumSetSlotView$Spec;->firstCategoryLabelHeight:I

    .line 804
    iget-object p1, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mSlotView:Lcom/zui/gallery/ui/AlbumSetSlotView;

    iget-object v0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mConfig:Lcom/zui/gallery/app/Config$AlbumSetPage;

    iget-object v0, v0, Lcom/zui/gallery/app/Config$AlbumSetPage;->slotViewSpec:Lcom/zui/gallery/ui/AlbumSetSlotView$Spec;

    invoke-virtual {p1, v0}, Lcom/zui/gallery/ui/AlbumSetSlotView;->setSlotSpec(Lcom/zui/gallery/ui/AlbumSetSlotView$Spec;)V

    .line 805
    iget-object p1, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mAlbumSetView:Lcom/zui/gallery/ui/AlbumSetSlotRenderer;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->onConfigChanged()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 2

    .line 440
    invoke-super {p0, p1, p2}, Lcom/zui/gallery/app/ActivityState;->onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 441
    invoke-direct {p0}, Lcom/zui/gallery/app/MoreAlbumSetPage;->initializeViews()V

    .line 442
    invoke-direct {p0, p1}, Lcom/zui/gallery/app/MoreAlbumSetPage;->initializeData(Landroid/os/Bundle;)V

    .line 445
    invoke-static {}, Lcom/zui/gallery/lesafe/LesafeEncrypt;->AESCipherInit()V

    .line 447
    iget-object p2, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object p2

    const-string/jumbo v0, "type-bits"

    const/4 v1, 0x7

    .line 448
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->typeBits:I

    const-string v0, "get-content"

    const/4 v1, 0x0

    .line 449
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mGetContent:Z

    const-string v0, "get-album"

    .line 450
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mGetAlbum:Z

    .line 451
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "typeBits:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->typeBits:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " mGetContent:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mGetContent:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " mGetAlbum:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mGetAlbum:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "awakadou"

    invoke-static {v0, p1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    new-instance p1, Lcom/zui/gallery/app/EyePosition;

    invoke-direct {p1, p2, p0}, Lcom/zui/gallery/app/EyePosition;-><init>(Landroid/content/Context;Lcom/zui/gallery/app/EyePosition$EyePositionListener;)V

    iput-object p1, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mEyePosition:Lcom/zui/gallery/app/EyePosition;

    .line 453
    iget-object p1, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getGalleryActionBar()Lcom/zui/gallery/app/GalleryActionBar;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mActionBar:Lcom/zui/gallery/app/GalleryActionBar;

    .line 454
    new-instance p1, Lcom/zui/gallery/app/MoreAlbumSetPage$2;

    iget-object p2, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getGLRoot()Lcom/zui/gallery/ui/GLRoot;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/zui/gallery/app/MoreAlbumSetPage$2;-><init>(Lcom/zui/gallery/app/MoreAlbumSetPage;Lcom/zui/gallery/ui/GLRoot;)V

    iput-object p1, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method protected onCreateActionBar(Landroid/view/Menu;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onDestroy()V
    .locals 2

    .line 498
    invoke-super {p0}, Lcom/zui/gallery/app/ActivityState;->onDestroy()V

    const-string v0, "AlbumSetPage"

    const-string v1, "onDestroy"

    .line 499
    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    iget-object v0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mSlotView:Lcom/zui/gallery/ui/AlbumSetSlotView;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/AlbumSetSlotView;->saveFolderVisibleStatus()V

    .line 503
    iget-object v0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mAlbumSetView:Lcom/zui/gallery/ui/AlbumSetSlotRenderer;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->destory()V

    .line 508
    iget-object v0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mActionModeHandler:Lcom/zui/gallery/ui/ActionModeHandler;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/ActionModeHandler;->destroy()V

    .line 509
    iget-object v0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mCreateFolderDialog:Lzui/app/MessageDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lzui/app/MessageDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 510
    iget-object v0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mCreateFolderDialog:Lzui/app/MessageDialog;

    invoke-virtual {v0}, Lzui/app/MessageDialog;->dismiss()V

    const/4 v0, 0x0

    .line 511
    iput-object v0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mCreateFolderDialog:Lzui/app/MessageDialog;

    .line 513
    :cond_0
    invoke-direct {p0}, Lcom/zui/gallery/app/MoreAlbumSetPage;->closeFloatDialog()V

    return-void
.end method

.method public onEyePositionChanged(FFF)V
    .locals 1

    .line 268
    iget-object v0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mRootPane:Lcom/zui/gallery/ui/GLView;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/GLView;->lockRendering()V

    .line 269
    iput p1, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mX:F

    .line 270
    iput p2, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mY:F

    .line 271
    iput p3, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mZ:F

    .line 272
    iget-object p1, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mRootPane:Lcom/zui/gallery/ui/GLView;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/GLView;->unlockRendering()V

    .line 273
    iget-object p1, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mRootPane:Lcom/zui/gallery/ui/GLView;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/GLView;->invalidate()V

    return-void
.end method

.method public onLongTap(ILandroid/graphics/Rect;)V
    .locals 1

    .line 420
    iget-boolean v0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mGetContent:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mGetAlbum:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->isThirdAppCall()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 422
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mAlbumSetDataAdapter:Lcom/zui/gallery/app/AlbumSetDataLoader;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/app/AlbumSetDataLoader;->getMediaSet(I)Lcom/zui/gallery/data/MediaSet;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 426
    :cond_1
    invoke-virtual {p1}, Lcom/zui/gallery/data/MediaSet;->isCameraRoll()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/zui/gallery/data/MediaSet;->isFavoriteAlbum()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 429
    :cond_2
    iput-object p1, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->longTapItem:Lcom/zui/gallery/data/MediaSet;

    .line 430
    iput-object p2, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->longTapItemAbslateRect:Landroid/graphics/Rect;

    .line 431
    invoke-direct {p0}, Lcom/zui/gallery/app/MoreAlbumSetPage;->showFloatDialog()V

    .line 434
    iget-object p1, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mSlotView:Lcom/zui/gallery/ui/AlbumSetSlotView;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/AlbumSetSlotView;->invalidate()V

    :cond_3
    :goto_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 721
    invoke-super {p0}, Lcom/zui/gallery/app/ActivityState;->onPause()V

    const-string v0, "AlbumSetPage"

    const-string v1, "onPause"

    .line 722
    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 723
    iput-boolean v0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mIsActive:Z

    .line 724
    iget-object v0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mAlbumSetDataAdapter:Lcom/zui/gallery/app/AlbumSetDataLoader;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AlbumSetDataLoader;->pause()V

    .line 726
    iget-object v0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mAlbumSetView:Lcom/zui/gallery/ui/AlbumSetSlotRenderer;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->pause()V

    .line 732
    iget-object v0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mActionModeHandler:Lcom/zui/gallery/ui/ActionModeHandler;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/ActionModeHandler;->pause()V

    .line 733
    iget-object v0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mEyePosition:Lcom/zui/gallery/app/EyePosition;

    invoke-virtual {v0}, Lcom/zui/gallery/app/EyePosition;->pause()V

    .line 738
    iget-object v0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mSyncTask:Lcom/zui/gallery/util/Future;

    if-eqz v0, :cond_0

    .line 739
    invoke-interface {v0}, Lcom/zui/gallery/util/Future;->cancel()V

    const/4 v0, 0x0

    .line 740
    iput-object v0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mSyncTask:Lcom/zui/gallery/util/Future;

    const/4 v0, 0x2

    .line 741
    invoke-direct {p0, v0}, Lcom/zui/gallery/app/MoreAlbumSetPage;->clearLoadingBit(I)V

    :cond_0
    const/16 v0, 0x8

    .line 745
    invoke-direct {p0, v0}, Lcom/zui/gallery/app/MoreAlbumSetPage;->setVisibilityCloudSyncTips(I)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 758
    invoke-super {p0}, Lcom/zui/gallery/app/ActivityState;->onResume()V

    const-string v0, "AlbumSetPage"

    const-string v1, "onResume"

    .line 759
    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 761
    iput-boolean v0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mIsActive:Z

    .line 762
    iget-object v1, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mRootPane:Lcom/zui/gallery/ui/GLView;

    invoke-virtual {p0, v1}, Lcom/zui/gallery/app/MoreAlbumSetPage;->setContentPane(Lcom/zui/gallery/ui/GLView;)V

    .line 763
    invoke-direct {p0}, Lcom/zui/gallery/app/MoreAlbumSetPage;->initTitleBar()V

    .line 764
    invoke-direct {p0}, Lcom/zui/gallery/app/MoreAlbumSetPage;->updateTitleBar()V

    .line 766
    invoke-direct {p0, v0}, Lcom/zui/gallery/app/MoreAlbumSetPage;->setLoadingBit(I)V

    .line 767
    iget-object v1, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mAlbumSetDataAdapter:Lcom/zui/gallery/app/AlbumSetDataLoader;

    invoke-virtual {v1}, Lcom/zui/gallery/app/AlbumSetDataLoader;->resume()V

    .line 769
    iget-object v1, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mAlbumSetView:Lcom/zui/gallery/ui/AlbumSetSlotRenderer;

    invoke-virtual {v1}, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->resume()V

    .line 770
    iget-object v1, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mEyePosition:Lcom/zui/gallery/app/EyePosition;

    invoke-virtual {v1}, Lcom/zui/gallery/app/EyePosition;->resume()V

    .line 771
    iget-object v1, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mActionModeHandler:Lcom/zui/gallery/ui/ActionModeHandler;

    invoke-virtual {v1}, Lcom/zui/gallery/ui/ActionModeHandler;->resume()V

    .line 773
    iget-boolean v1, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mInitialSynced:Z

    if-nez v1, :cond_0

    const/4 v1, 0x2

    .line 774
    invoke-direct {p0, v1}, Lcom/zui/gallery/app/MoreAlbumSetPage;->setLoadingBit(I)V

    .line 775
    iget-object v1, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mMediaSet:Lcom/zui/gallery/data/MediaSet;

    invoke-virtual {v1, p0}, Lcom/zui/gallery/data/MediaSet;->requestSync(Lcom/zui/gallery/data/MediaSet$SyncListener;)Lcom/zui/gallery/util/Future;

    move-result-object v1

    iput-object v1, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mSyncTask:Lcom/zui/gallery/util/Future;

    .line 777
    :cond_0
    iget-object v1, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v1, v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->showTab(Z)V

    .line 778
    iget-object v0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    sget-object v1, Lcom/zui/gallery/app/TabManager$TabIndex;->TAB_ALBUM:Lcom/zui/gallery/app/TabManager$TabIndex;

    invoke-virtual {v0, v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->updateTabIndex(Lcom/zui/gallery/app/TabManager$TabIndex;)V

    .line 779
    iget-object v0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->showHeader()V

    .line 789
    iget-object v0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-static {v0}, Lcom/zui/gallery/app/Config$AlbumSetPage;->get(Lcom/zui/gallery/app/AbstractGalleryActivity;)Lcom/zui/gallery/app/Config$AlbumSetPage;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mConfig:Lcom/zui/gallery/app/Config$AlbumSetPage;

    .line 790
    iget-object v0, v0, Lcom/zui/gallery/app/Config$AlbumSetPage;->slotViewSpec:Lcom/zui/gallery/ui/AlbumSetSlotView$Spec;

    const/4 v1, 0x0

    iput v1, v0, Lcom/zui/gallery/ui/AlbumSetSlotView$Spec;->categoryLabelHeight:I

    .line 791
    iget-object v0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mConfig:Lcom/zui/gallery/app/Config$AlbumSetPage;

    iget-object v0, v0, Lcom/zui/gallery/app/Config$AlbumSetPage;->slotViewSpec:Lcom/zui/gallery/ui/AlbumSetSlotView$Spec;

    iput v1, v0, Lcom/zui/gallery/ui/AlbumSetSlotView$Spec;->firstCategoryLabelHeight:I

    .line 792
    iget-object v0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mSlotView:Lcom/zui/gallery/ui/AlbumSetSlotView;

    iget-object v1, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mConfig:Lcom/zui/gallery/app/Config$AlbumSetPage;

    iget-object v1, v1, Lcom/zui/gallery/app/Config$AlbumSetPage;->slotViewSpec:Lcom/zui/gallery/ui/AlbumSetSlotView$Spec;

    invoke-virtual {v0, v1}, Lcom/zui/gallery/ui/AlbumSetSlotView;->setSlotSpec(Lcom/zui/gallery/ui/AlbumSetSlotView$Spec;)V

    .line 793
    iget-object v0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mAlbumSetView:Lcom/zui/gallery/ui/AlbumSetSlotRenderer;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->onConfigChanged()V

    return-void
.end method

.method public onSelectionChange(Lcom/zui/gallery/data/Path;Z)V
    .locals 1

    .line 1120
    iget-object v0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mActionModeHandler:Lcom/zui/gallery/ui/ActionModeHandler;

    invoke-virtual {v0, p1, p2}, Lcom/zui/gallery/ui/ActionModeHandler;->updateSupportedOperation(Lcom/zui/gallery/data/Path;Z)V

    return-void
.end method

.method public onSelectionModeChange(I)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1108
    :cond_0
    iget-object p1, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mAlbumSetView:Lcom/zui/gallery/ui/AlbumSetSlotRenderer;

    invoke-virtual {p1, v1}, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->setNeedMark(Z)V

    .line 1109
    iget-object p1, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mActionModeHandler:Lcom/zui/gallery/ui/ActionModeHandler;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/ActionModeHandler;->updateSupportedOperation()V

    .line 1112
    iget-object p1, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mRootPane:Lcom/zui/gallery/ui/GLView;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/GLView;->invalidate()V

    goto :goto_0

    .line 1100
    :cond_1
    iget-object p1, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mActionModeHandler:Lcom/zui/gallery/ui/ActionModeHandler;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/ActionModeHandler;->updateSupportedOperation()V

    .line 1101
    iget-object p1, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mRootPane:Lcom/zui/gallery/ui/GLView;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/GLView;->invalidate()V

    goto :goto_0

    .line 1091
    :cond_2
    iget-object p1, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mActionModeHandler:Lcom/zui/gallery/ui/ActionModeHandler;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/ActionModeHandler;->finishActionMode()V

    .line 1094
    iget-object p1, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mAlbumSetView:Lcom/zui/gallery/ui/AlbumSetSlotRenderer;

    invoke-virtual {p1, v0}, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->setNeedMark(Z)V

    .line 1096
    iget-object p1, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mRootPane:Lcom/zui/gallery/ui/GLView;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/GLView;->invalidate()V

    goto :goto_0

    .line 1079
    :cond_3
    iget-object p1, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mActionModeHandler:Lcom/zui/gallery/ui/ActionModeHandler;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/ActionModeHandler;->startActionMode()V

    .line 1080
    invoke-virtual {p0, v0}, Lcom/zui/gallery/app/MoreAlbumSetPage;->performHapticFeedback(I)V

    .line 1084
    iget-object p1, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mAlbumSetView:Lcom/zui/gallery/ui/AlbumSetSlotRenderer;

    invoke-virtual {p1, v1}, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->setNeedMark(Z)V

    .line 1085
    iget-object p1, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mRootPane:Lcom/zui/gallery/ui/GLView;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/GLView;->invalidate()V

    :goto_0
    return-void
.end method

.method public onSingleTapUp(I)V
    .locals 3

    .line 292
    iget-boolean v0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mIsActive:Z

    if-nez v0, :cond_0

    return-void

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 296
    iget-object v0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mAlbumSetDataAdapter:Lcom/zui/gallery/app/AlbumSetDataLoader;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/app/AlbumSetDataLoader;->getMediaSet(I)Lcom/zui/gallery/data/MediaSet;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 300
    :cond_1
    invoke-virtual {p1}, Lcom/zui/gallery/data/MediaSet;->isCameraRoll()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/zui/gallery/data/MediaSet;->isFavoriteAlbum()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 304
    :cond_2
    iget-object v0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {p1}, Lcom/zui/gallery/data/MediaSet;->getPath()Lcom/zui/gallery/data/Path;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/zui/gallery/ui/SelectionManager;->toggle(Lcom/zui/gallery/data/Path;)V

    .line 305
    iget-object p1, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mSlotView:Lcom/zui/gallery/ui/AlbumSetSlotView;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/AlbumSetSlotView;->invalidate()V

    goto :goto_1

    :cond_3
    :goto_0
    return-void

    .line 309
    :cond_4
    iget-object v0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mAlbumSetView:Lcom/zui/gallery/ui/AlbumSetSlotRenderer;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->setPressedIndex(I)V

    .line 310
    iget-object v0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mAlbumSetView:Lcom/zui/gallery/ui/AlbumSetSlotRenderer;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->setPressedUp()V

    .line 311
    iget-object v0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v1, 0x50

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_1
    return-void
.end method

.method protected onStateResult(IILandroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public onSyncDone(Lcom/zui/gallery/data/MediaSet;I)V
    .locals 2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 1127
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

    const-string v0, "AlbumSetPage"

    invoke-static {v0, p1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1130
    :cond_0
    iget-object p1, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    new-instance v0, Lcom/zui/gallery/app/MoreAlbumSetPage$7;

    invoke-direct {v0, p0, p2}, Lcom/zui/gallery/app/MoreAlbumSetPage$7;-><init>(Lcom/zui/gallery/app/MoreAlbumSetPage;I)V

    invoke-virtual {p1, v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected updateTitleBarVisibility()V
    .locals 5

    .line 1600
    iget-object v0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getTitleBar()Landroid/view/View;

    move-result-object v0

    .line 1601
    iget-object v1, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getHeadRoot()Landroid/view/View;

    move-result-object v1

    .line 1602
    iget-object v2, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getConfiguration()Landroid/content/res/Configuration;

    iget-object v2, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getActivityOrientation()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-ne v4, v2, :cond_0

    .line 1605
    iget-object v2, p0, Lcom/zui/gallery/app/MoreAlbumSetPage;->titleBarRightContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    const v2, 0x7f0701ff

    .line 1606
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :cond_0
    const v2, 0x7f0501dc

    .line 1610
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_0
    const v1, 0x7f080370

    .line 1613
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 1614
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method
