.class public Lcom/zui/gallery/app/AlbumSetPage;
.super Lcom/zui/gallery/app/ActivityState;
.source "AlbumSetPage.java"

# interfaces
.implements Lcom/zui/gallery/ui/SelectionManager$SelectionListener;
.implements Lcom/zui/gallery/app/EyePosition$EyePositionListener;
.implements Lcom/zui/gallery/data/MediaSet$SyncListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/app/AlbumSetPage$MyLoadingListener;,
        Lcom/zui/gallery/app/AlbumSetPage$QueryCSContentSyncTask;,
        Lcom/zui/gallery/app/AlbumSetPage$QueryCloudSyncSyncTask;
    }
.end annotation


# static fields
.field private static final BIT_LOADING_RELOAD:I = 0x1

.field private static final BIT_LOADING_SYNC:I = 0x2

.field private static final CS_AUTO_SYNC_SWITCH_STATUS_URI:Ljava/lang/String;

.field private static final CS_IMAGES_STATUS_URI:Ljava/lang/String;

.field private static final DATA_CACHE_SIZE:I = 0x100

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
.field protected LANDSCAPE_TITLEBAR_HEIGHT:I

.field protected PORTRAIT_TITLEBAR_HEIGHT:I

.field private addNewFolderView:Landroid/widget/ImageView;

.field private animation:Landroid/view/animation/Animation;

.field coberver:Landroid/database/ContentObserver;

.field private left_icon:Landroid/widget/ImageView;

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

.field private mLeftTextView:Landroid/widget/TextView;

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

.field private mTitle_left_bar:Landroid/widget/LinearLayout;

.field private mX:F

.field private mY:F

.field private mZ:F

.field private recordPressedState:Z

.field private renameFolderDialog:Lzui/app/MessageDialog;

.field private rightSelectImageView:Landroid/widget/ImageView;

.field private rightTextView:Landroid/widget/TextView;

.field private settingView:Landroid/widget/ImageView;

.field private subTitleView:Landroid/widget/TextView;

.field private titleBarRightContainer:Landroid/widget/LinearLayout;

.field private titleTextView:Landroid/widget/TextView;

.field private typeBits:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 226
    invoke-static {}, Lcom/zui/gallery/cloud/CloudUtils;->isOldCloudServiceExist()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "content://com.zui.cloudservice.option/photo_cloud_brief"

    goto :goto_0

    :cond_0
    const-string v0, "content://com.lenovo.leos.cloud.sync.option/photo_cloud_brief"

    :goto_0
    sput-object v0, Lcom/zui/gallery/app/AlbumSetPage;->CS_IMAGES_STATUS_URI:Ljava/lang/String;

    .line 227
    invoke-static {}, Lcom/zui/gallery/cloud/CloudUtils;->isOldCloudServiceExist()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "content://com.zui.cloudservice.option/photo_backup_toggle"

    goto :goto_1

    :cond_1
    const-string v0, "content://com.lenovo.leos.cloud.sync.option/photo_backup_toggle"

    :goto_1
    sput-object v0, Lcom/zui/gallery/app/AlbumSetPage;->CS_AUTO_SYNC_SWITCH_STATUS_URI:Ljava/lang/String;

    const-string v0, ""

    .line 228
    sput-object v0, Lcom/zui/gallery/app/AlbumSetPage;->cloudSyncContentHopUri:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 117
    invoke-direct {p0}, Lcom/zui/gallery/app/ActivityState;-><init>()V

    const/4 v0, 0x0

    .line 151
    iput-boolean v0, p0, Lcom/zui/gallery/app/AlbumSetPage;->mIsActive:Z

    const/4 v1, 0x0

    .line 183
    iput-object v1, p0, Lcom/zui/gallery/app/AlbumSetPage;->mSyncTask:Lcom/zui/gallery/util/Future;

    .line 185
    iput v0, p0, Lcom/zui/gallery/app/AlbumSetPage;->mLoadingBits:I

    .line 186
    iput-boolean v0, p0, Lcom/zui/gallery/app/AlbumSetPage;->mInitialSynced:Z

    .line 189
    iput-boolean v0, p0, Lcom/zui/gallery/app/AlbumSetPage;->mShowedEmptyToastForSelf:Z

    .line 194
    iput-object v1, p0, Lcom/zui/gallery/app/AlbumSetPage;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 205
    iput-boolean v0, p0, Lcom/zui/gallery/app/AlbumSetPage;->mMoveAndReorderAnimationFlag:Z

    const/16 v2, 0x34

    .line 230
    invoke-static {v2}, Lcom/zui/gallery/util/GalleryUtils;->dpToPixel(I)I

    move-result v2

    iput v2, p0, Lcom/zui/gallery/app/AlbumSetPage;->LANDSCAPE_TITLEBAR_HEIGHT:I

    const/16 v2, 0x46

    .line 231
    invoke-static {v2}, Lcom/zui/gallery/util/GalleryUtils;->dpToPixel(I)I

    move-result v2

    iput v2, p0, Lcom/zui/gallery/app/AlbumSetPage;->PORTRAIT_TITLEBAR_HEIGHT:I

    .line 239
    new-instance v2, Lcom/zui/gallery/app/AlbumSetPage$1;

    invoke-direct {v2, p0}, Lcom/zui/gallery/app/AlbumSetPage$1;-><init>(Lcom/zui/gallery/app/AlbumSetPage;)V

    iput-object v2, p0, Lcom/zui/gallery/app/AlbumSetPage;->mRootPane:Lcom/zui/gallery/ui/GLView;

    .line 376
    iput-object v1, p0, Lcom/zui/gallery/app/AlbumSetPage;->mEmptyAlbumToast:Ljava/lang/ref/WeakReference;

    .line 495
    iput-boolean v0, p0, Lcom/zui/gallery/app/AlbumSetPage;->recordPressedState:Z

    .line 929
    new-instance v0, Lcom/zui/gallery/app/AlbumSetPage$4;

    iget-object v1, p0, Lcom/zui/gallery/app/AlbumSetPage;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/zui/gallery/app/AlbumSetPage$4;-><init>(Lcom/zui/gallery/app/AlbumSetPage;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/zui/gallery/app/AlbumSetPage;->coberver:Landroid/database/ContentObserver;

    .line 1540
    new-instance v0, Lcom/zui/gallery/app/AlbumSetPage$12;

    invoke-direct {v0, p0}, Lcom/zui/gallery/app/AlbumSetPage$12;-><init>(Lcom/zui/gallery/app/AlbumSetPage;)V

    iput-object v0, p0, Lcom/zui/gallery/app/AlbumSetPage;->mConfirmDialogListener:Lcom/zui/gallery/ui/MenuExecutor$ProgressListener;

    return-void
.end method

.method private OnScroll()V
    .locals 1

    .line 479
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getCloudTipLayoutController()Lcom/zui/gallery/cloud/CloudTipLayoutController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/cloud/CloudTipLayoutController;->onScroll()V

    return-void
.end method

.method static synthetic access$000(Lcom/zui/gallery/app/AlbumSetPage;)Lcom/zui/gallery/app/EyePosition;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/zui/gallery/app/AlbumSetPage;->mEyePosition:Lcom/zui/gallery/app/EyePosition;

    return-object p0
.end method

.method static synthetic access$100(Lcom/zui/gallery/app/AlbumSetPage;)Z
    .locals 0

    .line 117
    iget-boolean p0, p0, Lcom/zui/gallery/app/AlbumSetPage;->mShowDetails:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/zui/gallery/app/AlbumSetPage;)Lcom/zui/gallery/ui/GLView;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/zui/gallery/app/AlbumSetPage;->mRootPane:Lcom/zui/gallery/ui/GLView;

    return-object p0
.end method

.method static synthetic access$1300()Ljava/lang/String;
    .locals 1

    .line 117
    sget-object v0, Lcom/zui/gallery/app/AlbumSetPage;->CS_AUTO_SYNC_SWITCH_STATUS_URI:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400()Ljava/lang/String;
    .locals 1

    .line 117
    sget-object v0, Lcom/zui/gallery/app/AlbumSetPage;->CS_IMAGES_STATUS_URI:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/zui/gallery/app/AlbumSetPage;I)V
    .locals 0

    .line 117
    invoke-direct {p0, p1}, Lcom/zui/gallery/app/AlbumSetPage;->setVisibilityCloudSyncTips(I)V

    return-void
.end method

.method static synthetic access$1600(Lcom/zui/gallery/app/AlbumSetPage;)Landroid/os/Handler;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/zui/gallery/app/AlbumSetPage;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1702(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 117
    sput-object p0, Lcom/zui/gallery/app/AlbumSetPage;->cloudSyncContentHopUri:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/zui/gallery/app/AlbumSetPage;Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;I)V
    .locals 0

    .line 117
    invoke-direct {p0, p1, p2}, Lcom/zui/gallery/app/AlbumSetPage;->showRenameDialog(Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/zui/gallery/app/AlbumSetPage;I)V
    .locals 0

    .line 117
    invoke-direct {p0, p1}, Lcom/zui/gallery/app/AlbumSetPage;->onDown(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/zui/gallery/app/AlbumSetPage;)Lcom/zui/gallery/ui/AlbumSetSlotRenderer;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/zui/gallery/app/AlbumSetPage;->mAlbumSetView:Lcom/zui/gallery/ui/AlbumSetSlotRenderer;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/zui/gallery/app/AlbumSetPage;Z)V
    .locals 0

    .line 117
    invoke-direct {p0, p1}, Lcom/zui/gallery/app/AlbumSetPage;->onUp(Z)V

    return-void
.end method

.method static synthetic access$2100(Lcom/zui/gallery/app/AlbumSetPage;)I
    .locals 0

    .line 117
    iget p0, p0, Lcom/zui/gallery/app/AlbumSetPage;->typeBits:I

    return p0
.end method

.method static synthetic access$2102(Lcom/zui/gallery/app/AlbumSetPage;I)I
    .locals 0

    .line 117
    iput p1, p0, Lcom/zui/gallery/app/AlbumSetPage;->typeBits:I

    return p1
.end method

.method static synthetic access$2200(Lcom/zui/gallery/app/AlbumSetPage;)V
    .locals 0

    .line 117
    invoke-direct {p0}, Lcom/zui/gallery/app/AlbumSetPage;->OnScroll()V

    return-void
.end method

.method static synthetic access$2300(Lcom/zui/gallery/app/AlbumSetPage;)V
    .locals 0

    .line 117
    invoke-direct {p0}, Lcom/zui/gallery/app/AlbumSetPage;->closeFloatDialog()V

    return-void
.end method

.method static synthetic access$2402(Lcom/zui/gallery/app/AlbumSetPage;Z)Z
    .locals 0

    .line 117
    iput-boolean p1, p0, Lcom/zui/gallery/app/AlbumSetPage;->mInitialSynced:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/zui/gallery/app/AlbumSetPage;I)V
    .locals 0

    .line 117
    invoke-direct {p0, p1}, Lcom/zui/gallery/app/AlbumSetPage;->clearLoadingBit(I)V

    return-void
.end method

.method static synthetic access$2600(Lcom/zui/gallery/app/AlbumSetPage;)Z
    .locals 0

    .line 117
    iget-boolean p0, p0, Lcom/zui/gallery/app/AlbumSetPage;->mIsActive:Z

    return p0
.end method

.method static synthetic access$2700(Lcom/zui/gallery/app/AlbumSetPage;I)V
    .locals 0

    .line 117
    invoke-direct {p0, p1}, Lcom/zui/gallery/app/AlbumSetPage;->setLoadingBit(I)V

    return-void
.end method

.method static synthetic access$2800(Lcom/zui/gallery/app/AlbumSetPage;)Z
    .locals 0

    .line 117
    iget-boolean p0, p0, Lcom/zui/gallery/app/AlbumSetPage;->mMoveAndReorderAnimationFlag:Z

    return p0
.end method

.method static synthetic access$2802(Lcom/zui/gallery/app/AlbumSetPage;Z)Z
    .locals 0

    .line 117
    iput-boolean p1, p0, Lcom/zui/gallery/app/AlbumSetPage;->mMoveAndReorderAnimationFlag:Z

    return p1
.end method

.method static synthetic access$2900(Lcom/zui/gallery/app/AlbumSetPage;)Lzui/app/MessageDialog;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/zui/gallery/app/AlbumSetPage;->mCreateFolderDialog:Lzui/app/MessageDialog;

    return-object p0
.end method

.method static synthetic access$300(Lcom/zui/gallery/app/AlbumSetPage;)Lcom/zui/gallery/ui/AlbumSetSlotView;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/zui/gallery/app/AlbumSetPage;->mSlotView:Lcom/zui/gallery/ui/AlbumSetSlotView;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/zui/gallery/app/AlbumSetPage;)Lzui/app/MessageDialog;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/zui/gallery/app/AlbumSetPage;->renameFolderDialog:Lzui/app/MessageDialog;

    return-object p0
.end method

.method static synthetic access$3100(Lcom/zui/gallery/app/AlbumSetPage;)V
    .locals 0

    .line 117
    invoke-direct {p0}, Lcom/zui/gallery/app/AlbumSetPage;->showAddGroupDialog()V

    return-void
.end method

.method static synthetic access$3200(Lcom/zui/gallery/app/AlbumSetPage;)Lcom/zui/gallery/data/MediaSet;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/zui/gallery/app/AlbumSetPage;->longTapItem:Lcom/zui/gallery/data/MediaSet;

    return-object p0
.end method

.method static synthetic access$3202(Lcom/zui/gallery/app/AlbumSetPage;Lcom/zui/gallery/data/MediaSet;)Lcom/zui/gallery/data/MediaSet;
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/zui/gallery/app/AlbumSetPage;->longTapItem:Lcom/zui/gallery/data/MediaSet;

    return-object p1
.end method

.method static synthetic access$3300(Lcom/zui/gallery/app/AlbumSetPage;)Lcom/zui/gallery/ui/ActionModeHandler;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/zui/gallery/app/AlbumSetPage;->mActionModeHandler:Lcom/zui/gallery/ui/ActionModeHandler;

    return-object p0
.end method

.method static synthetic access$400(Lcom/zui/gallery/app/AlbumSetPage;)F
    .locals 0

    .line 117
    iget p0, p0, Lcom/zui/gallery/app/AlbumSetPage;->mX:F

    return p0
.end method

.method static synthetic access$500(Lcom/zui/gallery/app/AlbumSetPage;)F
    .locals 0

    .line 117
    iget p0, p0, Lcom/zui/gallery/app/AlbumSetPage;->mY:F

    return p0
.end method

.method static synthetic access$600(Lcom/zui/gallery/app/AlbumSetPage;)F
    .locals 0

    .line 117
    iget p0, p0, Lcom/zui/gallery/app/AlbumSetPage;->mZ:F

    return p0
.end method

.method static synthetic access$700(Lcom/zui/gallery/app/AlbumSetPage;I)V
    .locals 0

    .line 117
    invoke-direct {p0, p1}, Lcom/zui/gallery/app/AlbumSetPage;->pickAlbum(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/zui/gallery/app/AlbumSetPage;)Landroid/app/ProgressDialog;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/zui/gallery/app/AlbumSetPage;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object p0
.end method

.method static synthetic access$900(Lcom/zui/gallery/app/AlbumSetPage;)V
    .locals 0

    .line 117
    invoke-direct {p0}, Lcom/zui/gallery/app/AlbumSetPage;->moveFolderInDataBase()V

    return-void
.end method

.method private static albumShouldOpenInFilmstrip(Lcom/zui/gallery/data/MediaSet;)Z
    .locals 3

    .line 370
    invoke-virtual {p0}, Lcom/zui/gallery/data/MediaSet;->getMediaItemCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 371
    invoke-virtual {p0, v1, v2}, Lcom/zui/gallery/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    .line 373
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_1

    move v1, v2

    :cond_1
    return v1
.end method

.method private checkNeededRefreshFolder()V
    .locals 4

    .line 919
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->isRefreshFolder()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 920
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->setRefreshFolder(Z)V

    .line 921
    new-instance v0, Lcom/zui/gallery/app/AlbumSetDataLoader;

    iget-object v1, p0, Lcom/zui/gallery/app/AlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    iget-object v2, p0, Lcom/zui/gallery/app/AlbumSetPage;->mMediaSet:Lcom/zui/gallery/data/MediaSet;

    const/16 v3, 0x100

    invoke-direct {v0, v1, v2, v3}, Lcom/zui/gallery/app/AlbumSetDataLoader;-><init>(Lcom/zui/gallery/app/AbstractGalleryActivity;Lcom/zui/gallery/data/MediaSet;I)V

    iput-object v0, p0, Lcom/zui/gallery/app/AlbumSetPage;->mAlbumSetDataAdapter:Lcom/zui/gallery/app/AlbumSetDataLoader;

    .line 923
    new-instance v1, Lcom/zui/gallery/app/AlbumSetPage$MyLoadingListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/zui/gallery/app/AlbumSetPage$MyLoadingListener;-><init>(Lcom/zui/gallery/app/AlbumSetPage;Lcom/zui/gallery/app/AlbumSetPage$1;)V

    invoke-virtual {v0, v1}, Lcom/zui/gallery/app/AlbumSetDataLoader;->setLoadingListener(Lcom/zui/gallery/app/LoadingListener;)V

    .line 924
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetPage;->mAlbumSetView:Lcom/zui/gallery/ui/AlbumSetSlotRenderer;

    iget-object v1, p0, Lcom/zui/gallery/app/AlbumSetPage;->mAlbumSetDataAdapter:Lcom/zui/gallery/app/AlbumSetDataLoader;

    invoke-virtual {v0, v1}, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->setModel(Lcom/zui/gallery/app/AlbumSetDataLoader;)V

    :cond_0
    return-void
.end method

.method private cleanupCameraButton()V
    .locals 2

    .line 657
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetPage;->mCameraButton:Landroid/widget/Button;

    if-nez v0, :cond_0

    return-void

    .line 659
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const v1, 0x7f0801bc

    .line 660
    invoke-virtual {v0, v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    if-nez v0, :cond_1

    return-void

    .line 663
    :cond_1
    iget-object v1, p0, Lcom/zui/gallery/app/AlbumSetPage;->mCameraButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 664
    iput-object v0, p0, Lcom/zui/gallery/app/AlbumSetPage;->mCameraButton:Landroid/widget/Button;

    return-void
.end method

.method private cleanupEmptyImage()V
    .locals 2

    .line 697
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetPage;->mEmptyImage:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    return-void

    .line 699
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const v1, 0x7f0801bc

    .line 700
    invoke-virtual {v0, v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    if-nez v0, :cond_1

    return-void

    .line 703
    :cond_1
    iget-object v1, p0, Lcom/zui/gallery/app/AlbumSetPage;->mEmptyImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 704
    iput-object v0, p0, Lcom/zui/gallery/app/AlbumSetPage;->mEmptyImage:Landroid/widget/ImageView;

    return-void
.end method

.method private clearLoadingBit(I)V
    .locals 4

    .line 722
    iget v0, p0, Lcom/zui/gallery/app/AlbumSetPage;->mLoadingBits:I

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p0, Lcom/zui/gallery/app/AlbumSetPage;->mLoadingBits:I

    const/4 v0, 0x0

    if-nez p1, :cond_5

    .line 723
    iget-boolean p1, p0, Lcom/zui/gallery/app/AlbumSetPage;->mIsActive:Z

    if-eqz p1, :cond_5

    .line 724
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumSetPage;->mAlbumSetDataAdapter:Lcom/zui/gallery/app/AlbumSetDataLoader;

    invoke-virtual {p1}, Lcom/zui/gallery/app/AlbumSetDataLoader;->size()I

    move-result p1

    const/4 v1, 0x1

    if-nez p1, :cond_3

    .line 725
    instance-of p1, p0, Lcom/zui/gallery/app/AlbumSetPage;

    const/4 v2, -0x1

    const-string v3, "empty-album"

    if-eqz p1, :cond_1

    .line 730
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getStateManager()Lcom/zui/gallery/app/StateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/gallery/app/StateManager;->getStateCount()I

    move-result p1

    if-le p1, v1, :cond_0

    .line 731
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 732
    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 733
    invoke-virtual {p0, v2, p1}, Lcom/zui/gallery/app/AlbumSetPage;->setStateResult(ILandroid/content/Intent;)V

    .line 734
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getStateManager()Lcom/zui/gallery/app/StateManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/zui/gallery/app/StateManager;->finishState(Lcom/zui/gallery/app/ActivityState;)V

    goto :goto_0

    .line 736
    :cond_0
    invoke-direct {p0, v0}, Lcom/zui/gallery/app/AlbumSetPage;->updateSelectTextView(Z)V

    .line 738
    iput-boolean v1, p0, Lcom/zui/gallery/app/AlbumSetPage;->mShowedEmptyToastForSelf:Z

    .line 740
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumSetPage;->mSlotView:Lcom/zui/gallery/ui/AlbumSetSlotView;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/AlbumSetSlotView;->invalidate()V

    :goto_0
    return-void

    .line 752
    :cond_1
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getStateManager()Lcom/zui/gallery/app/StateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/gallery/app/StateManager;->getStateCount()I

    move-result p1

    if-le p1, v1, :cond_2

    .line 753
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 754
    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 755
    invoke-virtual {p0, v2, p1}, Lcom/zui/gallery/app/AlbumSetPage;->setStateResult(ILandroid/content/Intent;)V

    .line 756
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getStateManager()Lcom/zui/gallery/app/StateManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/zui/gallery/app/StateManager;->finishState(Lcom/zui/gallery/app/ActivityState;)V

    goto :goto_1

    .line 758
    :cond_2
    invoke-direct {p0, v0}, Lcom/zui/gallery/app/AlbumSetPage;->updateSelectTextView(Z)V

    .line 760
    iput-boolean v1, p0, Lcom/zui/gallery/app/AlbumSetPage;->mShowedEmptyToastForSelf:Z

    .line 762
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumSetPage;->mSlotView:Lcom/zui/gallery/ui/AlbumSetSlotView;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/AlbumSetSlotView;->invalidate()V

    :goto_1
    return-void

    .line 772
    :cond_3
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumSetPage;->mMediaSet:Lcom/zui/gallery/data/MediaSet;

    if-eqz p1, :cond_5

    .line 773
    instance-of p1, p0, Lcom/zui/gallery/app/AlbumSetPage;

    if-eqz p1, :cond_4

    .line 774
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumSetPage;->mAlbumSetDataAdapter:Lcom/zui/gallery/app/AlbumSetDataLoader;

    invoke-virtual {p1}, Lcom/zui/gallery/app/AlbumSetDataLoader;->isOnlySystemGallery()Z

    move-result p1

    xor-int/2addr p1, v1

    .line 775
    invoke-direct {p0, p1}, Lcom/zui/gallery/app/AlbumSetPage;->updateSelectTextView(Z)V

    if-nez p1, :cond_5

    .line 777
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumSetPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/SelectionManager;->inSelectionMode()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 778
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumSetPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/SelectionManager;->leaveSelectionMode()V

    goto :goto_2

    .line 783
    :cond_4
    invoke-direct {p0, v1}, Lcom/zui/gallery/app/AlbumSetPage;->updateSelectTextView(Z)V

    .line 797
    :cond_5
    :goto_2
    iget-boolean p1, p0, Lcom/zui/gallery/app/AlbumSetPage;->mShowedEmptyToastForSelf:Z

    if-eqz p1, :cond_6

    .line 798
    iput-boolean v0, p0, Lcom/zui/gallery/app/AlbumSetPage;->mShowedEmptyToastForSelf:Z

    :cond_6
    return-void
.end method

.method private closeFloatDialog()V
    .locals 1

    .line 1907
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetPage;->mFloatDialog:Lzui/app/FloatDialog;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    .line 1910
    invoke-virtual {v0}, Lzui/app/FloatDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1911
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetPage;->mFloatDialog:Lzui/app/FloatDialog;

    invoke-virtual {v0}, Lzui/app/FloatDialog;->dismiss()V

    :cond_1
    return-void
.end method

.method private getSelectedString()Ljava/lang/String;
    .locals 4

    .line 1212
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/SelectionManager;->getSelectedCount()I

    move-result v0

    .line 1214
    iget-object v1, p0, Lcom/zui/gallery/app/AlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0004

    invoke-virtual {v1, v2, v0}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 1215
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

    .line 325
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 326
    iget-object v1, p0, Lcom/zui/gallery/app/AlbumSetPage;->mRootPane:Lcom/zui/gallery/ui/GLView;

    iget-object v2, p0, Lcom/zui/gallery/app/AlbumSetPage;->mSlotView:Lcom/zui/gallery/ui/AlbumSetSlotView;

    invoke-virtual {v1, v2, v0}, Lcom/zui/gallery/ui/GLView;->getBoundsOf(Lcom/zui/gallery/ui/GLView;Landroid/graphics/Rect;)Z

    .line 327
    iget-object v1, p0, Lcom/zui/gallery/app/AlbumSetPage;->mSlotView:Lcom/zui/gallery/ui/AlbumSetSlotView;

    invoke-virtual {v1, p1}, Lcom/zui/gallery/ui/AlbumSetSlotView;->getSlotRect(I)Landroid/graphics/Rect;

    move-result-object p1

    .line 328
    iget-object v1, p0, Lcom/zui/gallery/app/AlbumSetPage;->mSlotView:Lcom/zui/gallery/ui/AlbumSetSlotView;

    invoke-virtual {v1}, Lcom/zui/gallery/ui/AlbumSetSlotView;->getScrollX()I

    move-result v1

    .line 329
    iget-object v2, p0, Lcom/zui/gallery/app/AlbumSetPage;->mSlotView:Lcom/zui/gallery/ui/AlbumSetSlotView;

    invoke-virtual {v2}, Lcom/zui/gallery/ui/AlbumSetSlotView;->getScrollY()I

    move-result v2

    .line 330
    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget v4, p1, Landroid/graphics/Rect;->left:I

    iget v5, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    sub-int/2addr v3, v1

    const/4 v1, 0x0

    aput v3, p2, v1

    .line 331
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

    .line 674
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetPage;->mCameraButton:Landroid/widget/Button;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x8

    .line 676
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method

.method private hideEmptyAlbumToast()V
    .locals 1

    .line 393
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetPage;->mEmptyAlbumToast:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 394
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 396
    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    :cond_0
    return-void
.end method

.method private hideEmptyImage()V
    .locals 2

    .line 714
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetPage;->mEmptyImage:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x8

    .line 716
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private initTitleBar()V
    .locals 4

    .line 1690
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getTitleBar()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f08036d

    .line 1691
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/zui/gallery/app/AlbumSetPage;->titleTextView:Landroid/widget/TextView;

    .line 1692
    iget-object v2, p0, Lcom/zui/gallery/app/AlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06034a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    const v1, 0x7f080370

    .line 1693
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/zui/gallery/app/AlbumSetPage;->titleBarRightContainer:Landroid/widget/LinearLayout;

    const v2, 0x7f0802ce

    .line 1694
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/zui/gallery/app/AlbumSetPage;->rightTextView:Landroid/widget/TextView;

    const v1, 0x7f08036f

    .line 1695
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/zui/gallery/app/AlbumSetPage;->mTitle_left_bar:Landroid/widget/LinearLayout;

    const v1, 0x7f080215

    .line 1696
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/zui/gallery/app/AlbumSetPage;->mLeftTextView:Landroid/widget/TextView;

    const v1, 0x7f080214

    .line 1697
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zui/gallery/app/AlbumSetPage;->left_icon:Landroid/widget/ImageView;

    .line 1698
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetPage;->titleBarRightContainer:Landroid/widget/LinearLayout;

    const v1, 0x7f0802cd

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zui/gallery/app/AlbumSetPage;->addNewFolderView:Landroid/widget/ImageView;

    .line 1699
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetPage;->titleBarRightContainer:Landroid/widget/LinearLayout;

    const v1, 0x7f0802cb

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zui/gallery/app/AlbumSetPage;->settingView:Landroid/widget/ImageView;

    .line 1700
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetPage;->titleBarRightContainer:Landroid/widget/LinearLayout;

    const v1, 0x7f0802ca

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zui/gallery/app/AlbumSetPage;->rightSelectImageView:Landroid/widget/ImageView;

    .line 1701
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const v1, 0x7f01000c

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/app/AlbumSetPage;->animation:Landroid/view/animation/Animation;

    .line 1702
    invoke-direct {p0, v3}, Lcom/zui/gallery/app/AlbumSetPage;->updateSelectTextView(Z)V

    return-void
.end method

.method private initializeData(Landroid/os/Bundle;)V
    .locals 3

    .line 1064
    iput-object p1, p0, Lcom/zui/gallery/app/AlbumSetPage;->mData:Landroid/os/Bundle;

    const-string v0, "media-path"

    .line 1065
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1066
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getDataManager()Lcom/zui/gallery/data/DataManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zui/gallery/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/zui/gallery/data/MediaSet;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/app/AlbumSetPage;->mMediaSet:Lcom/zui/gallery/data/MediaSet;

    .line 1067
    iget-object v1, p0, Lcom/zui/gallery/app/AlbumSetPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {v1, v0}, Lcom/zui/gallery/ui/SelectionManager;->setSourceMediaSet(Lcom/zui/gallery/data/MediaSet;)V

    .line 1068
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initializeData mMediaSet:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/gallery/app/AlbumSetPage;->mMediaSet:Lcom/zui/gallery/data/MediaSet;

    invoke-virtual {v1}, Lcom/zui/gallery/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/gallery/app/AlbumSetPage;->mMediaSet:Lcom/zui/gallery/data/MediaSet;

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

    .line 1069
    new-instance p1, Lcom/zui/gallery/app/AlbumSetDataLoader;

    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    iget-object v1, p0, Lcom/zui/gallery/app/AlbumSetPage;->mMediaSet:Lcom/zui/gallery/data/MediaSet;

    const/16 v2, 0x100

    invoke-direct {p1, v0, v1, v2}, Lcom/zui/gallery/app/AlbumSetDataLoader;-><init>(Lcom/zui/gallery/app/AbstractGalleryActivity;Lcom/zui/gallery/data/MediaSet;I)V

    iput-object p1, p0, Lcom/zui/gallery/app/AlbumSetPage;->mAlbumSetDataAdapter:Lcom/zui/gallery/app/AlbumSetDataLoader;

    .line 1071
    new-instance v0, Lcom/zui/gallery/app/AlbumSetPage$MyLoadingListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/zui/gallery/app/AlbumSetPage$MyLoadingListener;-><init>(Lcom/zui/gallery/app/AlbumSetPage;Lcom/zui/gallery/app/AlbumSetPage$1;)V

    invoke-virtual {p1, v0}, Lcom/zui/gallery/app/AlbumSetDataLoader;->setLoadingListener(Lcom/zui/gallery/app/LoadingListener;)V

    .line 1072
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumSetPage;->mAlbumSetView:Lcom/zui/gallery/ui/AlbumSetSlotRenderer;

    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetPage;->mAlbumSetDataAdapter:Lcom/zui/gallery/app/AlbumSetDataLoader;

    invoke-virtual {p1, v0}, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->setModel(Lcom/zui/gallery/app/AlbumSetDataLoader;)V

    return-void
.end method

.method private initializeViews()V
    .locals 9

    .line 1076
    new-instance v0, Lcom/zui/gallery/ui/SelectionManager;

    iget-object v1, p0, Lcom/zui/gallery/app/AlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/zui/gallery/ui/SelectionManager;-><init>(Lcom/zui/gallery/app/AbstractGalleryActivity;Z)V

    iput-object v0, p0, Lcom/zui/gallery/app/AlbumSetPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    .line 1077
    invoke-virtual {v0, p0}, Lcom/zui/gallery/ui/SelectionManager;->setSelectionListener(Lcom/zui/gallery/ui/SelectionManager$SelectionListener;)V

    .line 1079
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-static {v0}, Lcom/zui/gallery/app/Config$AlbumSetPage;->get(Lcom/zui/gallery/app/AbstractGalleryActivity;)Lcom/zui/gallery/app/Config$AlbumSetPage;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/app/AlbumSetPage;->mConfig:Lcom/zui/gallery/app/Config$AlbumSetPage;

    .line 1083
    new-instance v0, Lcom/zui/gallery/ui/AlbumSetSlotView;

    iget-object v1, p0, Lcom/zui/gallery/app/AlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    iget-object v2, p0, Lcom/zui/gallery/app/AlbumSetPage;->mConfig:Lcom/zui/gallery/app/Config$AlbumSetPage;

    iget-object v2, v2, Lcom/zui/gallery/app/Config$AlbumSetPage;->slotViewSpec:Lcom/zui/gallery/ui/AlbumSetSlotView$Spec;

    invoke-direct {v0, v1, v2}, Lcom/zui/gallery/ui/AlbumSetSlotView;-><init>(Lcom/zui/gallery/app/AbstractGalleryActivity;Lcom/zui/gallery/ui/AlbumSetSlotView$Spec;)V

    iput-object v0, p0, Lcom/zui/gallery/app/AlbumSetPage;->mSlotView:Lcom/zui/gallery/ui/AlbumSetSlotView;

    .line 1086
    new-instance v0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;

    iget-object v4, p0, Lcom/zui/gallery/app/AlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    iget-object v5, p0, Lcom/zui/gallery/app/AlbumSetPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    iget-object v6, p0, Lcom/zui/gallery/app/AlbumSetPage;->mSlotView:Lcom/zui/gallery/ui/AlbumSetSlotView;

    iget-object v1, p0, Lcom/zui/gallery/app/AlbumSetPage;->mConfig:Lcom/zui/gallery/app/Config$AlbumSetPage;

    iget-object v7, v1, Lcom/zui/gallery/app/Config$AlbumSetPage;->labelSpec:Lcom/zui/gallery/ui/AlbumSetSlotRenderer$LabelSpec;

    iget-object v1, p0, Lcom/zui/gallery/app/AlbumSetPage;->mConfig:Lcom/zui/gallery/app/Config$AlbumSetPage;

    iget v8, v1, Lcom/zui/gallery/app/Config$AlbumSetPage;->placeholderColor:I

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;-><init>(Lcom/zui/gallery/app/AbstractGalleryActivity;Lcom/zui/gallery/ui/SelectionManager;Lcom/zui/gallery/ui/AlbumSetSlotView;Lcom/zui/gallery/ui/AlbumSetSlotRenderer$LabelSpec;I)V

    iput-object v0, p0, Lcom/zui/gallery/app/AlbumSetPage;->mAlbumSetView:Lcom/zui/gallery/ui/AlbumSetSlotRenderer;

    .line 1090
    iget-object v1, p0, Lcom/zui/gallery/app/AlbumSetPage;->mSlotView:Lcom/zui/gallery/ui/AlbumSetSlotView;

    invoke-virtual {v1, v0}, Lcom/zui/gallery/ui/AlbumSetSlotView;->setSlotRenderer(Lcom/zui/gallery/ui/AlbumSetSlotRenderer;)V

    .line 1091
    new-instance v0, Lcom/zui/gallery/ui/ActionModeHandler;

    iget-object v1, p0, Lcom/zui/gallery/app/AlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    iget-object v2, p0, Lcom/zui/gallery/app/AlbumSetPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    iget-object v3, p0, Lcom/zui/gallery/app/AlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getEditTitleBar()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-direct {v0, v1, v2, v3}, Lcom/zui/gallery/ui/ActionModeHandler;-><init>(Lcom/zui/gallery/app/AbstractGalleryActivity;Lcom/zui/gallery/ui/SelectionManager;Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/zui/gallery/app/AlbumSetPage;->mActionModeHandler:Lcom/zui/gallery/ui/ActionModeHandler;

    .line 1092
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetPage;->mRootPane:Lcom/zui/gallery/ui/GLView;

    iget-object v1, p0, Lcom/zui/gallery/app/AlbumSetPage;->mSlotView:Lcom/zui/gallery/ui/AlbumSetSlotView;

    invoke-virtual {v0, v1}, Lcom/zui/gallery/ui/GLView;->addComponent(Lcom/zui/gallery/ui/GLView;)V

    .line 1093
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetPage;->mSlotView:Lcom/zui/gallery/ui/AlbumSetSlotView;

    new-instance v1, Lcom/zui/gallery/app/AlbumSetPage$5;

    invoke-direct {v1, p0}, Lcom/zui/gallery/app/AlbumSetPage$5;-><init>(Lcom/zui/gallery/app/AlbumSetPage;)V

    invoke-virtual {v0, v1}, Lcom/zui/gallery/ui/AlbumSetSlotView;->setAlbumsetFolderNameOnclickListener(Lcom/zui/gallery/ui/AlbumSetSlotView$AlbumsetFolderNameOnclickListener;)V

    .line 1104
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetPage;->mSlotView:Lcom/zui/gallery/ui/AlbumSetSlotView;

    new-instance v1, Lcom/zui/gallery/app/AlbumSetPage$6;

    invoke-direct {v1, p0}, Lcom/zui/gallery/app/AlbumSetPage$6;-><init>(Lcom/zui/gallery/app/AlbumSetPage;)V

    invoke-virtual {v0, v1}, Lcom/zui/gallery/ui/AlbumSetSlotView;->setListener(Lcom/zui/gallery/ui/AlbumSetSlotView$Listener;)V

    return-void
.end method

.method private isFloatDialogShowing()Z
    .locals 1

    .line 1916
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetPage;->mFloatDialog:Lzui/app/FloatDialog;

    if-eqz v0, :cond_0

    .line 1917
    invoke-virtual {v0}, Lzui/app/FloatDialog;->isShowing()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private moveFolderInDataBase()V
    .locals 7

    .line 1514
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zui/gallery/ui/SelectionManager;->getSelected(Z)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1515
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 1519
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1520
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1522
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

    .line 1523
    iget-object v5, p0, Lcom/zui/gallery/app/AlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v5}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getDataManager()Lcom/zui/gallery/data/DataManager;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/zui/gallery/data/DataManager;->getMediaSet(Lcom/zui/gallery/data/Path;)Lcom/zui/gallery/data/MediaSet;

    move-result-object v5

    .line 1524
    invoke-virtual {v5}, Lcom/zui/gallery/data/MediaSet;->isGroupAlbum()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1525
    invoke-virtual {v5}, Lcom/zui/gallery/data/MediaSet;->isFavoriteAlbum()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1526
    invoke-virtual {v4}, Lcom/zui/gallery/data/Path;->getSuffix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1529
    :cond_2
    invoke-virtual {v5}, Lcom/zui/gallery/data/MediaSet;->isCameraRoll()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1530
    invoke-virtual {v4}, Lcom/zui/gallery/data/Path;->getSuffix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1535
    :cond_3
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/zui/gallery/data/GroupBucketHelper;->batchDeleteWhite(Landroid/content/ContentResolver;Ljava/util/ArrayList;)V

    .line 1536
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v3, v1}, Lcom/zui/gallery/data/GroupBucketHelper;->batchUpdateGroupWhiteState(Landroid/content/ContentResolver;Ljava/util/ArrayList;Z)V

    :cond_4
    :goto_1
    return-void
.end method

.method private onDown(I)V
    .locals 1

    .line 483
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetPage;->mAlbumSetView:Lcom/zui/gallery/ui/AlbumSetSlotRenderer;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->setPressedIndex(I)V

    return-void
.end method

.method private onUp(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 489
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumSetPage;->mAlbumSetView:Lcom/zui/gallery/ui/AlbumSetSlotRenderer;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->setPressedIndex(I)V

    goto :goto_0

    .line 491
    :cond_0
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumSetPage;->mAlbumSetView:Lcom/zui/gallery/ui/AlbumSetSlotRenderer;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->setPressedUp()V

    :goto_0
    return-void
.end method

.method private pickAlbum(I)V
    .locals 10

    .line 401
    iget-boolean v0, p0, Lcom/zui/gallery/app/AlbumSetPage;->mIsActive:Z

    if-nez v0, :cond_0

    return-void

    .line 404
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pickAlbum, slotIndex = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AlbumSetPage"

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetPage;->mAlbumSetDataAdapter:Lcom/zui/gallery/app/AlbumSetDataLoader;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/app/AlbumSetDataLoader;->getMediaSet(I)Lcom/zui/gallery/data/MediaSet;

    move-result-object v0

    .line 408
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pickAlbum, targetSet = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_1

    return-void

    .line 412
    :cond_1
    invoke-direct {p0}, Lcom/zui/gallery/app/AlbumSetPage;->hideEmptyAlbumToast()V

    .line 414
    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaSet;->getPath()Lcom/zui/gallery/data/Path;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zui/gallery/data/Path;->toString()Ljava/lang/String;

    move-result-object v2

    .line 416
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pickAlbum, mediaPath = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " targetSet.getSystemId():"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaSet;->getSystemId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/zui/gallery/app/AlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f10014e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v3, 0xa

    const-string/jumbo v5, "type-bits"

    const/16 v6, 0x9

    const v7, 0x7f100153

    const-string v8, "media-path"

    if-nez v1, :cond_8

    .line 419
    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v9, p0, Lcom/zui/gallery/app/AlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v9}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 420
    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaSet;->getSystemId()I

    move-result v1

    if-eq v1, v6, :cond_8

    .line 421
    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaSet;->getSystemId()I

    move-result v1

    if-ne v1, v3, :cond_2

    goto/16 :goto_1

    .line 450
    :cond_2
    new-instance v1, Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/zui/gallery/app/AlbumSetPage;->getData()Landroid/os/Bundle;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    const/4 v3, 0x2

    new-array v4, v3, [I

    .line 452
    invoke-direct {p0, p1, v4}, Lcom/zui/gallery/app/AlbumSetPage;->getSlotCenter(I[I)V

    const-string p1, "set-center"

    .line 453
    invoke-virtual {v1, p1, v4}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 454
    iget-boolean p1, p0, Lcom/zui/gallery/app/AlbumSetPage;->mGetAlbum:Z

    if-eqz p1, :cond_3

    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaSet;->isLeafAlbum()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 455
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    .line 456
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 457
    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaSet;->getPath()Lcom/zui/gallery/data/Path;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/data/Path;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "album-path"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, -0x1

    .line 458
    invoke-virtual {p1, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 459
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto/16 :goto_2

    .line 460
    :cond_3
    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaSet;->getSubMediaSetCount()I

    move-result p1

    const/4 v0, 0x1

    if-lez p1, :cond_4

    .line 461
    invoke-virtual {v1, v8, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getStateManager()Lcom/zui/gallery/app/StateManager;

    move-result-object p1

    const-class v2, Lcom/zui/gallery/app/AlbumSetPage;

    invoke-virtual {p1, v2, v0, v1}, Lcom/zui/gallery/app/StateManager;->startStateForResult(Ljava/lang/Class;ILandroid/os/Bundle;)V

    goto/16 :goto_2

    .line 465
    :cond_4
    invoke-virtual {v1, v8, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    iget-boolean p1, p0, Lcom/zui/gallery/app/AlbumSetPage;->mGetContent:Z

    if-eqz p1, :cond_7

    .line 468
    iget p1, p0, Lcom/zui/gallery/app/AlbumSetPage;->typeBits:I

    const/4 v2, 0x5

    if-ne p1, v2, :cond_5

    move v3, v0

    goto :goto_0

    :cond_5
    const/4 v0, 0x6

    if-ne p1, v0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v3, 0x3

    .line 470
    :goto_0
    invoke-virtual {v1, v5, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 473
    :cond_7
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getStateManager()Lcom/zui/gallery/app/StateManager;

    move-result-object p1

    const-class v0, Lcom/zui/gallery/app/AlbumPage;

    invoke-virtual {p1, v0, v1}, Lcom/zui/gallery/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    goto/16 :goto_2

    .line 422
    :cond_8
    :goto_1
    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/zui/gallery/app/AlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 423
    sget-object p1, Lcom/zui/gallery/app/AlbumSetPage;->cloudSyncContentHopUri:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_c

    .line 424
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x10000000

    .line 425
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 426
    sget-object v0, Lcom/zui/gallery/app/AlbumSetPage;->cloudSyncContentHopUri:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 427
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 429
    :cond_9
    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/zui/gallery/app/AlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 430
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const/16 v0, 0x15

    .line 431
    invoke-virtual {p1, v5, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 432
    iget-object v1, p0, Lcom/zui/gallery/app/AlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    .line 433
    invoke-virtual {v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getDataManager()Lcom/zui/gallery/data/DataManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/zui/gallery/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v0

    .line 432
    invoke-virtual {p1, v8, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    iget-boolean v0, p0, Lcom/zui/gallery/app/AlbumSetPage;->mGetContent:Z

    const-string v1, "get-content"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 437
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getStateManager()Lcom/zui/gallery/app/StateManager;

    move-result-object v0

    const-class v1, Lcom/zui/gallery/app/MoreAlbumSetPage;

    invoke-virtual {v0, v1, p1}, Lcom/zui/gallery/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_2

    .line 438
    :cond_a
    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaSet;->getSystemId()I

    move-result p1

    if-ne p1, v6, :cond_b

    .line 439
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 440
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const-class v1, Lcom/zui/gallery/trash/LenovoTrashListActivity;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 441
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    .line 442
    :cond_b
    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaSet;->getSystemId()I

    move-result p1

    if-ne p1, v3, :cond_c

    .line 443
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.lenovo.privacyspace.verification"

    .line 444
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 445
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1001fe

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.app.extra.TITLE"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 446
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const/16 v1, 0x22b8

    invoke-virtual {v0, p1, v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_c
    :goto_2
    return-void
.end method

.method private setLoadingBit(I)V
    .locals 1

    .line 829
    iget v0, p0, Lcom/zui/gallery/app/AlbumSetPage;->mLoadingBits:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/zui/gallery/app/AlbumSetPage;->mLoadingBits:I

    return-void
.end method

.method private setVisibilityCloudSyncTips(I)V
    .locals 1

    .line 589
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getCloudSyncTipsLayout()Landroid/view/View;

    move-result-object v0

    .line 590
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private setupCameraButton()Z
    .locals 4

    .line 631
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-static {v0}, Lcom/zui/gallery/util/GalleryUtils;->isCameraAvailable(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 633
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const v2, 0x7f0801bc

    .line 634
    invoke-virtual {v0, v2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    if-nez v0, :cond_1

    return v1

    .line 638
    :cond_1
    new-instance v2, Landroid/widget/Button;

    iget-object v3, p0, Lcom/zui/gallery/app/AlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-direct {v2, v3}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/zui/gallery/app/AlbumSetPage;->mCameraButton:Landroid/widget/Button;

    const v3, 0x7f100064

    .line 639
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 640
    iget-object v2, p0, Lcom/zui/gallery/app/AlbumSetPage;->mCameraButton:Landroid/widget/Button;

    const v3, 0x7f0701f3

    invoke-virtual {v2, v1, v3, v1, v1}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 642
    iget-object v1, p0, Lcom/zui/gallery/app/AlbumSetPage;->mCameraButton:Landroid/widget/Button;

    new-instance v2, Lcom/zui/gallery/app/AlbumSetPage$3;

    invoke-direct {v2, p0}, Lcom/zui/gallery/app/AlbumSetPage$3;-><init>(Lcom/zui/gallery/app/AlbumSetPage;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 648
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xd

    .line 651
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 652
    iget-object v2, p0, Lcom/zui/gallery/app/AlbumSetPage;->mCameraButton:Landroid/widget/Button;

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    return v0
.end method

.method private setupEmptyImage()Z
    .locals 3

    .line 681
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const v1, 0x7f0801bc

    .line 682
    invoke-virtual {v0, v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 686
    :cond_0
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/zui/gallery/app/AlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/zui/gallery/app/AlbumSetPage;->mEmptyImage:Landroid/widget/ImageView;

    const v2, 0x7f07006a

    .line 687
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 688
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xd

    .line 691
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 692
    iget-object v2, p0, Lcom/zui/gallery/app/AlbumSetPage;->mEmptyImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    return v0
.end method

.method private showAddGroupDialog()V
    .locals 3

    .line 1319
    new-instance v0, Lzui/app/MessageDialog$Builder;

    iget-object v1, p0, Lcom/zui/gallery/app/AlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    iget-object v2, p0, Lcom/zui/gallery/app/AlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-static {v2}, Lcom/zui/gallery/util/GalleryUtils;->getCurrentMessageDialogTheme(Landroid/content/Context;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lzui/app/MessageDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f100037

    .line 1320
    invoke-virtual {v0, v1}, Lzui/app/MessageDialog$Builder;->setTitle(I)Lzui/app/MessageDialog$Builder;

    const/4 v1, 0x2

    .line 1321
    invoke-virtual {v0, v1}, Lzui/app/MessageDialog$Builder;->setMessageDialogType(I)Lzui/app/MessageDialog$Builder;

    const v1, 0x7f100042

    .line 1322
    invoke-virtual {v0, v1}, Lzui/app/MessageDialog$Builder;->setEditorHint(I)Lzui/app/MessageDialog$Builder;

    .line 1324
    iget-object v1, p0, Lcom/zui/gallery/app/AlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    .line 1325
    invoke-virtual {v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10009d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/zui/gallery/app/AlbumSetPage$8;

    invoke-direct {v2, p0}, Lcom/zui/gallery/app/AlbumSetPage$8;-><init>(Lcom/zui/gallery/app/AlbumSetPage;)V

    .line 1324
    invoke-virtual {v0, v1, v2}, Lzui/app/MessageDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lzui/app/MessageDialog$Builder;

    .line 1401
    iget-object v1, p0, Lcom/zui/gallery/app/AlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    .line 1402
    invoke-virtual {v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100068

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/zui/gallery/app/AlbumSetPage$9;

    invoke-direct {v2, p0}, Lcom/zui/gallery/app/AlbumSetPage$9;-><init>(Lcom/zui/gallery/app/AlbumSetPage;)V

    .line 1401
    invoke-virtual {v0, v1, v2}, Lzui/app/MessageDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lzui/app/MessageDialog$Builder;

    .line 1409
    invoke-virtual {v0}, Lzui/app/MessageDialog$Builder;->show()Lzui/app/MessageDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/app/AlbumSetPage;->mCreateFolderDialog:Lzui/app/MessageDialog;

    const/4 v1, 0x0

    .line 1410
    invoke-virtual {v0, v1}, Lzui/app/MessageDialog;->setCanceledOnTouchOutside(Z)V

    .line 1411
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetPage;->mCreateFolderDialog:Lzui/app/MessageDialog;

    invoke-virtual {v0}, Lzui/app/MessageDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v2, 0x5

    .line 1412
    invoke-virtual {v0, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 1413
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetPage;->mCreateFolderDialog:Lzui/app/MessageDialog;

    invoke-virtual {v0}, Lzui/app/MessageDialog;->getEditor()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 1416
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetPage;->mCreateFolderDialog:Lzui/app/MessageDialog;

    new-instance v2, Lcom/zui/gallery/app/AlbumSetPage$10;

    invoke-direct {v2, p0}, Lcom/zui/gallery/app/AlbumSetPage$10;-><init>(Lcom/zui/gallery/app/AlbumSetPage;)V

    invoke-virtual {v0, v2}, Lzui/app/MessageDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 1426
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetPage;->mCreateFolderDialog:Lzui/app/MessageDialog;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lzui/app/MessageDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1428
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1429
    iget-object v1, p0, Lcom/zui/gallery/app/AlbumSetPage;->mCreateFolderDialog:Lzui/app/MessageDialog;

    new-instance v2, Lcom/zui/gallery/app/AlbumSetPage$11;

    invoke-direct {v2, p0, v0}, Lcom/zui/gallery/app/AlbumSetPage$11;-><init>(Lcom/zui/gallery/app/AlbumSetPage;Landroid/widget/Button;)V

    invoke-virtual {v1, v2}, Lzui/app/MessageDialog;->setEditorTextWatcher(Landroid/text/TextWatcher;)V

    :cond_0
    return-void
.end method

.method private showCameraButton()V
    .locals 2

    .line 668
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetPage;->mCameraButton:Landroid/widget/Button;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/zui/gallery/app/AlbumSetPage;->setupCameraButton()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 670
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetPage;->mCameraButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method

.method private showEmptyAlbumToast(I)V
    .locals 2

    .line 380
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetPage;->mEmptyAlbumToast:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 381
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 383
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    .line 387
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const v1, 0x7f10010b

    invoke-static {v0, v1, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 388
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/zui/gallery/app/AlbumSetPage;->mEmptyAlbumToast:Ljava/lang/ref/WeakReference;

    .line 389
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private showEmptyImage()V
    .locals 2

    .line 708
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetPage;->mEmptyImage:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/zui/gallery/app/AlbumSetPage;->setupEmptyImage()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 710
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetPage;->mEmptyImage:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private showFloatDialog()V
    .locals 10

    .line 1804
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetPage;->longTapItem:Lcom/zui/gallery/data/MediaSet;

    if-eqz v0, :cond_4

    .line 1805
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 1806
    iget-object v2, p0, Lcom/zui/gallery/app/AlbumSetPage;->mSlotView:Lcom/zui/gallery/ui/AlbumSetSlotView;

    iget-object v3, p0, Lcom/zui/gallery/app/AlbumSetPage;->longTapItem:Lcom/zui/gallery/data/MediaSet;

    invoke-virtual {v3}, Lcom/zui/gallery/data/MediaSet;->getPath()Lcom/zui/gallery/data/Path;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/zui/gallery/ui/AlbumSetSlotView;->setLongTapItemPath(Lcom/zui/gallery/data/Path;)V

    .line 1807
    iget-object v2, p0, Lcom/zui/gallery/app/AlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1809
    iget-object v3, p0, Lcom/zui/gallery/app/AlbumSetPage;->longTapItem:Lcom/zui/gallery/data/MediaSet;

    invoke-virtual {v3}, Lcom/zui/gallery/data/MediaSet;->isMediaSet()Z

    move-result v3

    const v4, 0x7f1000b9

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    new-array v3, v5, [Ljava/lang/String;

    .line 1811
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v1

    .line 1812
    new-instance v1, Lzui/app/FloatDialog$Builder;

    iget-object v2, p0, Lcom/zui/gallery/app/AlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-direct {v1, v2}, Lzui/app/FloatDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v5}, Lzui/app/FloatDialog$Builder;->setShowAsMenuPopup(Z)Lzui/app/FloatDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/zui/gallery/app/AlbumSetPage$20;

    invoke-direct {v2, p0}, Lcom/zui/gallery/app/AlbumSetPage$20;-><init>(Lcom/zui/gallery/app/AlbumSetPage;)V

    invoke-virtual {v1, v3, v2}, Lzui/app/FloatDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lzui/app/FloatDialog$Builder;

    move-result-object v1

    .line 1832
    invoke-virtual {v1, v0}, Lzui/app/FloatDialog$Builder;->setMaskWindowBackground(Landroid/graphics/drawable/Drawable;)Lzui/app/FloatDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lzui/app/FloatDialog$Builder;->create()Lzui/app/FloatDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/app/AlbumSetPage;->mFloatDialog:Lzui/app/FloatDialog;

    goto/16 :goto_0

    .line 1834
    :cond_0
    iget-object v3, p0, Lcom/zui/gallery/app/AlbumSetPage;->longTapItem:Lcom/zui/gallery/data/MediaSet;

    invoke-virtual {v3}, Lcom/zui/gallery/data/MediaSet;->getMediaType()I

    move-result v3

    const v6, 0x7f1000fa

    const/4 v7, 0x3

    const v8, 0x7f100254

    const/4 v9, 0x2

    if-ne v3, v9, :cond_1

    new-array v3, v7, [Ljava/lang/String;

    .line 1836
    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v1

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v5

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v9

    .line 1837
    new-instance v1, Lzui/app/FloatDialog$Builder;

    iget-object v2, p0, Lcom/zui/gallery/app/AlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-direct {v1, v2}, Lzui/app/FloatDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v5}, Lzui/app/FloatDialog$Builder;->setShowAsMenuPopup(Z)Lzui/app/FloatDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/zui/gallery/app/AlbumSetPage$21;

    invoke-direct {v2, p0}, Lcom/zui/gallery/app/AlbumSetPage$21;-><init>(Lcom/zui/gallery/app/AlbumSetPage;)V

    invoke-virtual {v1, v3, v2}, Lzui/app/FloatDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lzui/app/FloatDialog$Builder;

    move-result-object v1

    .line 1852
    invoke-virtual {v1, v0}, Lzui/app/FloatDialog$Builder;->setMaskWindowBackground(Landroid/graphics/drawable/Drawable;)Lzui/app/FloatDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lzui/app/FloatDialog$Builder;->create()Lzui/app/FloatDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/app/AlbumSetPage;->mFloatDialog:Lzui/app/FloatDialog;

    goto :goto_0

    .line 1853
    :cond_1
    invoke-static {v3}, Lcom/zui/gallery/util/GalleryUtils;->canVideoEditType(I)Z

    move-result v3

    if-eqz v3, :cond_2

    new-array v3, v7, [Ljava/lang/String;

    .line 1854
    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v1

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v5

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v9

    .line 1855
    new-instance v1, Lzui/app/FloatDialog$Builder;

    iget-object v2, p0, Lcom/zui/gallery/app/AlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-direct {v1, v2}, Lzui/app/FloatDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v5}, Lzui/app/FloatDialog$Builder;->setShowAsMenuPopup(Z)Lzui/app/FloatDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/zui/gallery/app/AlbumSetPage$22;

    invoke-direct {v2, p0}, Lcom/zui/gallery/app/AlbumSetPage$22;-><init>(Lcom/zui/gallery/app/AlbumSetPage;)V

    invoke-virtual {v1, v3, v2}, Lzui/app/FloatDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lzui/app/FloatDialog$Builder;

    move-result-object v1

    .line 1870
    invoke-virtual {v1, v0}, Lzui/app/FloatDialog$Builder;->setMaskWindowBackground(Landroid/graphics/drawable/Drawable;)Lzui/app/FloatDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lzui/app/FloatDialog$Builder;->create()Lzui/app/FloatDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/app/AlbumSetPage;->mFloatDialog:Lzui/app/FloatDialog;

    goto :goto_0

    :cond_2
    new-array v3, v9, [Ljava/lang/String;

    .line 1872
    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v1

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v5

    .line 1873
    new-instance v1, Lzui/app/FloatDialog$Builder;

    iget-object v2, p0, Lcom/zui/gallery/app/AlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-direct {v1, v2}, Lzui/app/FloatDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v5}, Lzui/app/FloatDialog$Builder;->setShowAsMenuPopup(Z)Lzui/app/FloatDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/zui/gallery/app/AlbumSetPage$23;

    invoke-direct {v2, p0}, Lcom/zui/gallery/app/AlbumSetPage$23;-><init>(Lcom/zui/gallery/app/AlbumSetPage;)V

    invoke-virtual {v1, v3, v2}, Lzui/app/FloatDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lzui/app/FloatDialog$Builder;

    move-result-object v1

    .line 1886
    invoke-virtual {v1, v0}, Lzui/app/FloatDialog$Builder;->setMaskWindowBackground(Landroid/graphics/drawable/Drawable;)Lzui/app/FloatDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lzui/app/FloatDialog$Builder;->create()Lzui/app/FloatDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/app/AlbumSetPage;->mFloatDialog:Lzui/app/FloatDialog;

    .line 1889
    :goto_0
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetPage;->mFloatDialog:Lzui/app/FloatDialog;

    new-instance v1, Lcom/zui/gallery/app/AlbumSetPage$24;

    invoke-direct {v1, p0}, Lcom/zui/gallery/app/AlbumSetPage$24;-><init>(Lcom/zui/gallery/app/AlbumSetPage;)V

    invoke-virtual {v0, v1}, Lzui/app/FloatDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1897
    invoke-direct {p0}, Lcom/zui/gallery/app/AlbumSetPage;->isFloatDialogShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1898
    invoke-direct {p0}, Lcom/zui/gallery/app/AlbumSetPage;->closeFloatDialog()V

    .line 1900
    :cond_3
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetPage;->longTapItemAbslateRect:Landroid/graphics/Rect;

    .line 1901
    iget-object v1, p0, Lcom/zui/gallery/app/AlbumSetPage;->mFloatDialog:Lzui/app/FloatDialog;

    invoke-virtual {v1, v0}, Lzui/app/FloatDialog;->showAtLocation(Landroid/graphics/Rect;)V

    :cond_4
    return-void
.end method

.method private showRenameDialog(Lcom/zui/gallery/data/MediaSet;)V
    .locals 3

    .line 1581
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetPage;->renameFolderDialog:Lzui/app/MessageDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lzui/app/MessageDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    if-eqz p1, :cond_2

    .line 1582
    invoke-virtual {p1}, Lcom/zui/gallery/data/MediaSet;->isGroupAlbum()Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    .line 1584
    :cond_1
    new-instance v0, Lzui/app/MessageDialog$Builder;

    iget-object v1, p0, Lcom/zui/gallery/app/AlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    iget-object v2, p0, Lcom/zui/gallery/app/AlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-static {v2}, Lcom/zui/gallery/util/GalleryUtils;->getCurrentMessageDialogTheme(Landroid/content/Context;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lzui/app/MessageDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f100046

    .line 1585
    invoke-virtual {v0, v1}, Lzui/app/MessageDialog$Builder;->setTitle(I)Lzui/app/MessageDialog$Builder;

    const/4 v1, 0x2

    .line 1586
    invoke-virtual {v0, v1}, Lzui/app/MessageDialog$Builder;->setMessageDialogType(I)Lzui/app/MessageDialog$Builder;

    .line 1587
    invoke-virtual {p1}, Lcom/zui/gallery/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lzui/app/MessageDialog$Builder;->setEditorHint(Ljava/lang/CharSequence;)Lzui/app/MessageDialog$Builder;

    .line 1589
    iget-object v1, p0, Lcom/zui/gallery/app/AlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    .line 1590
    invoke-virtual {v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10009d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/zui/gallery/app/AlbumSetPage$13;

    invoke-direct {v2, p0, p1}, Lcom/zui/gallery/app/AlbumSetPage$13;-><init>(Lcom/zui/gallery/app/AlbumSetPage;Lcom/zui/gallery/data/MediaSet;)V

    .line 1589
    invoke-virtual {v0, v1, v2}, Lzui/app/MessageDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lzui/app/MessageDialog$Builder;

    .line 1608
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    .line 1609
    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f100068

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/zui/gallery/app/AlbumSetPage$14;

    invoke-direct {v1, p0}, Lcom/zui/gallery/app/AlbumSetPage$14;-><init>(Lcom/zui/gallery/app/AlbumSetPage;)V

    .line 1608
    invoke-virtual {v0, p1, v1}, Lzui/app/MessageDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lzui/app/MessageDialog$Builder;

    .line 1616
    invoke-virtual {v0}, Lzui/app/MessageDialog$Builder;->show()Lzui/app/MessageDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/app/AlbumSetPage;->renameFolderDialog:Lzui/app/MessageDialog;

    const/4 v0, 0x0

    .line 1617
    invoke-virtual {p1, v0}, Lzui/app/MessageDialog;->setCanceledOnTouchOutside(Z)V

    .line 1618
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumSetPage;->renameFolderDialog:Lzui/app/MessageDialog;

    invoke-virtual {p1}, Lzui/app/MessageDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v1, 0x5

    .line 1619
    invoke-virtual {p1, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 1622
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumSetPage;->renameFolderDialog:Lzui/app/MessageDialog;

    new-instance v1, Lcom/zui/gallery/app/AlbumSetPage$15;

    invoke-direct {v1, p0}, Lcom/zui/gallery/app/AlbumSetPage$15;-><init>(Lcom/zui/gallery/app/AlbumSetPage;)V

    invoke-virtual {p1, v1}, Lzui/app/MessageDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 1632
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumSetPage;->renameFolderDialog:Lzui/app/MessageDialog;

    const/4 v1, -0x1

    invoke-virtual {p1, v1}, Lzui/app/MessageDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1635
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1636
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetPage;->renameFolderDialog:Lzui/app/MessageDialog;

    new-instance v1, Lcom/zui/gallery/app/AlbumSetPage$16;

    invoke-direct {v1, p0, p1}, Lcom/zui/gallery/app/AlbumSetPage$16;-><init>(Lcom/zui/gallery/app/AlbumSetPage;Landroid/widget/Button;)V

    invoke-virtual {v0, v1}, Lzui/app/MessageDialog;->setEditorTextWatcher(Landroid/text/TextWatcher;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private showRenameDialog(Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;I)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1681
    iget-object p1, p1, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->album:Lcom/zui/gallery/data/MediaSet;

    .line 1682
    invoke-virtual {p1}, Lcom/zui/gallery/data/MediaSet;->isGroupAlbum()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1683
    invoke-direct {p0, p1}, Lcom/zui/gallery/app/AlbumSetPage;->showRenameDialog(Lcom/zui/gallery/data/MediaSet;)V

    :cond_0
    return-void
.end method

.method private startPrivacyListActivity()V
    .locals 3

    .line 1204
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1205
    iget-object v1, p0, Lcom/zui/gallery/app/AlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const-class v2, Lcom/zui/gallery/banner/FileListActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "com.zui.gallery.open_privacy_gallery"

    .line 1206
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "privateGallery"

    const/4 v2, 0x1

    .line 1207
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1208
    iget-object v1, p0, Lcom/zui/gallery/app/AlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v1, v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private updateActionBarTitle()V
    .locals 4

    .line 814
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 815
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/SelectionManager;->getSelectedCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 817
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

    .line 819
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetPage;->mActionModeHandler:Lcom/zui/gallery/ui/ActionModeHandler;

    invoke-direct {p0}, Lcom/zui/gallery/app/AlbumSetPage;->getSelectedString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zui/gallery/ui/ActionModeHandler;->setTitle(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private updateHeadRoot()V
    .locals 4

    .line 615
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-static {v0}, Lcom/zui/gallery/util/DeviceTypeUtils;->isWorkingMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 616
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getStatusBarHeight()I

    move-result v0

    .line 617
    :goto_0
    iget-object v1, p0, Lcom/zui/gallery/app/AlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06004f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 618
    iget-object v2, p0, Lcom/zui/gallery/app/AlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0601c1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    add-int/2addr v0, v2

    add-int/2addr v1, v0

    .line 620
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getHeadRoot()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 621
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 622
    iget-object v2, p0, Lcom/zui/gallery/app/AlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getHeadRoot()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 623
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getTitleBar()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 624
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 v1, 0x11

    .line 625
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 626
    iget-object v1, p0, Lcom/zui/gallery/app/AlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getTitleBar()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateSelectTextView(Z)V
    .locals 1

    .line 1571
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetPage;->titleBarRightContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 1572
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->isThirdAppCall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1573
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumSetPage;->rightSelectImageView:Landroid/widget/ImageView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_0

    .line 1575
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetPage;->rightSelectImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateTitleBar()V
    .locals 4

    .line 1742
    invoke-direct {p0}, Lcom/zui/gallery/app/AlbumSetPage;->updateHeadRoot()V

    .line 1744
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetPage;->titleBarRightContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1746
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1747
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetPage;->titleTextView:Landroid/widget/TextView;

    const v1, 0x7f100281

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1748
    iget-boolean v0, p0, Lcom/zui/gallery/app/AlbumSetPage;->mGetContent:Z

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->isThirdAppCall()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 1758
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetPage;->addNewFolderView:Landroid/widget/ImageView;

    const v3, 0x7f070078

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1759
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetPage;->rightTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1760
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetPage;->left_icon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1761
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetPage;->addNewFolderView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1762
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetPage;->rightSelectImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1763
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetPage;->titleBarRightContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1764
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetPage;->addNewFolderView:Landroid/widget/ImageView;

    new-instance v3, Lcom/zui/gallery/app/AlbumSetPage$17;

    invoke-direct {v3, p0}, Lcom/zui/gallery/app/AlbumSetPage$17;-><init>(Lcom/zui/gallery/app/AlbumSetPage;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1772
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetPage;->addNewFolderView:Landroid/widget/ImageView;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1773
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-static {v0}, Lcom/zui/gallery/cloud/CloudUtils;->isCloudServiceExist(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-static {v0}, Lcom/zui/gallery/cloud/CloudUtils;->isOldCloudServiceExist(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 1776
    :cond_1
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetPage;->settingView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 1774
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetPage;->settingView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1778
    :goto_1
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetPage;->settingView:Landroid/widget/ImageView;

    new-instance v1, Lcom/zui/gallery/app/AlbumSetPage$18;

    invoke-direct {v1, p0}, Lcom/zui/gallery/app/AlbumSetPage$18;-><init>(Lcom/zui/gallery/app/AlbumSetPage;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    .line 1749
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetPage;->rightSelectImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1750
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetPage;->rightTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1751
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetPage;->left_icon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1752
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetPage;->left_icon:Landroid/widget/ImageView;

    const v1, 0x7f07005a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1754
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetPage;->left_icon:Landroid/widget/ImageView;

    new-instance v1, Lcom/zui/gallery/app/-$$Lambda$AlbumSetPage$_NbE04XLk0EOljor25FsHIYH5po;

    invoke-direct {v1, p0}, Lcom/zui/gallery/app/-$$Lambda$AlbumSetPage$_NbE04XLk0EOljor25FsHIYH5po;-><init>(Lcom/zui/gallery/app/AlbumSetPage;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1787
    :goto_3
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetPage;->titleTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/zui/gallery/app/AlbumSetPage;->animation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1788
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetPage;->rightSelectImageView:Landroid/widget/ImageView;

    new-instance v1, Lcom/zui/gallery/app/AlbumSetPage$19;

    invoke-direct {v1, p0}, Lcom/zui/gallery/app/AlbumSetPage$19;-><init>(Lcom/zui/gallery/app/AlbumSetPage;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1800
    :cond_4
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zui/gallery/app/AlbumSetPage;->updateTitleBarVisibility(Landroid/content/res/Configuration;)V

    return-void
.end method


# virtual methods
.method public finishMoveFolderAnimation()V
    .locals 3

    .line 1506
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetPage;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public finishReorderAnimation()V
    .locals 3

    .line 1510
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetPage;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public freeResources()V
    .locals 1

    .line 865
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetPage;->mAlbumSetView:Lcom/zui/gallery/ui/AlbumSetSlotRenderer;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->pause()V

    return-void
.end method

.method protected getBackgroundColorId(Landroid/os/Bundle;)I
    .locals 0

    const p1, 0x7f0500b3

    return p1
.end method

.method public synthetic lambda$updateTitleBar$0$AlbumSetPage(Landroid/view/View;)V
    .locals 0

    .line 1755
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->finishAndRemoveTask()V

    return-void
.end method

.method public needShowEmptyImage()Z
    .locals 1

    .line 825
    iget-boolean v0, p0, Lcom/zui/gallery/app/AlbumSetPage;->mShowedEmptyToastForSelf:Z

    return v0
.end method

.method public onBackPressed()V
    .locals 1

    .line 316
    iget-boolean v0, p0, Lcom/zui/gallery/app/AlbumSetPage;->mShowDetails:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 317
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 318
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/SelectionManager;->leaveSelectionMode()V

    goto :goto_0

    .line 320
    :cond_1
    invoke-super {p0}, Lcom/zui/gallery/app/ActivityState;->onBackPressed()V

    :goto_0
    return-void
.end method

.method protected onBottombarClicked(I)V
    .locals 1

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 1489
    :sswitch_0
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumSetPage;->mActionModeHandler:Lcom/zui/gallery/ui/ActionModeHandler;

    const v0, 0x7f0800ac

    invoke-virtual {p1, v0}, Lcom/zui/gallery/ui/ActionModeHandler;->OnBottomBarButtonClicked(I)V

    goto :goto_0

    .line 1482
    :sswitch_1
    invoke-direct {p0}, Lcom/zui/gallery/app/AlbumSetPage;->moveFolderInDataBase()V

    .line 1483
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumSetPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/SelectionManager;->leaveSelectionMode()V

    goto :goto_0

    .line 1495
    :sswitch_2
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumSetPage;->mActionModeHandler:Lcom/zui/gallery/ui/ActionModeHandler;

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

    .line 302
    invoke-super {p0, p1}, Lcom/zui/gallery/app/ActivityState;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 303
    invoke-direct {p0}, Lcom/zui/gallery/app/AlbumSetPage;->initTitleBar()V

    .line 304
    invoke-direct {p0}, Lcom/zui/gallery/app/AlbumSetPage;->updateActionBarTitle()V

    .line 305
    invoke-direct {p0}, Lcom/zui/gallery/app/AlbumSetPage;->updateTitleBar()V

    .line 307
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-static {p1}, Lcom/zui/gallery/app/Config$AlbumSetPage;->get(Lcom/zui/gallery/app/AbstractGalleryActivity;)Lcom/zui/gallery/app/Config$AlbumSetPage;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/app/AlbumSetPage;->mConfig:Lcom/zui/gallery/app/Config$AlbumSetPage;

    .line 308
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetPage;->mSlotView:Lcom/zui/gallery/ui/AlbumSetSlotView;

    iget-object p1, p1, Lcom/zui/gallery/app/Config$AlbumSetPage;->slotViewSpec:Lcom/zui/gallery/ui/AlbumSetSlotView$Spec;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/ui/AlbumSetSlotView;->setSlotSpec(Lcom/zui/gallery/ui/AlbumSetSlotView$Spec;)V

    .line 309
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumSetPage;->mAlbumSetView:Lcom/zui/gallery/ui/AlbumSetSlotRenderer;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->onConfigChanged()V

    .line 310
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->buildTabManager()V

    .line 311
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    sget-object v0, Lcom/zui/gallery/app/TabManager$TabIndex;->TAB_ALBUM:Lcom/zui/gallery/app/TabManager$TabIndex;

    invoke-virtual {p1, v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->updateTabIndex(Lcom/zui/gallery/app/TabManager$TabIndex;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 2

    .line 536
    invoke-super {p0, p1, p2}, Lcom/zui/gallery/app/ActivityState;->onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 537
    invoke-direct {p0}, Lcom/zui/gallery/app/AlbumSetPage;->initializeViews()V

    .line 538
    invoke-direct {p0, p1}, Lcom/zui/gallery/app/AlbumSetPage;->initializeData(Landroid/os/Bundle;)V

    .line 539
    invoke-direct {p0}, Lcom/zui/gallery/app/AlbumSetPage;->initTitleBar()V

    .line 540
    invoke-direct {p0}, Lcom/zui/gallery/app/AlbumSetPage;->updateHeadRoot()V

    .line 542
    invoke-static {}, Lcom/zui/gallery/lesafe/LesafeEncrypt;->AESCipherInit()V

    .line 544
    iget-object p2, p0, Lcom/zui/gallery/app/AlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object p2

    const-string/jumbo v0, "type-bits"

    const/4 v1, 0x7

    .line 545
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/zui/gallery/app/AlbumSetPage;->typeBits:I

    const-string v0, "get-content"

    const/4 v1, 0x0

    .line 546
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/zui/gallery/app/AlbumSetPage;->mGetContent:Z

    const-string v0, "get-album"

    .line 547
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/zui/gallery/app/AlbumSetPage;->mGetAlbum:Z

    .line 548
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "AlbumSetPage oncreatetypeBits:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/zui/gallery/app/AlbumSetPage;->typeBits:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " mGetContent:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/zui/gallery/app/AlbumSetPage;->mGetContent:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " mGetAlbum:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/zui/gallery/app/AlbumSetPage;->mGetAlbum:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AlbumSetPage"

    invoke-static {v0, p1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    new-instance p1, Lcom/zui/gallery/app/EyePosition;

    invoke-direct {p1, p2, p0}, Lcom/zui/gallery/app/EyePosition;-><init>(Landroid/content/Context;Lcom/zui/gallery/app/EyePosition$EyePositionListener;)V

    iput-object p1, p0, Lcom/zui/gallery/app/AlbumSetPage;->mEyePosition:Lcom/zui/gallery/app/EyePosition;

    .line 550
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getGalleryActionBar()Lcom/zui/gallery/app/GalleryActionBar;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/app/AlbumSetPage;->mActionBar:Lcom/zui/gallery/app/GalleryActionBar;

    .line 551
    new-instance p1, Lcom/zui/gallery/app/AlbumSetPage$2;

    iget-object p2, p0, Lcom/zui/gallery/app/AlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getGLRoot()Lcom/zui/gallery/ui/GLRoot;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/zui/gallery/app/AlbumSetPage$2;-><init>(Lcom/zui/gallery/app/AlbumSetPage;Lcom/zui/gallery/ui/GLRoot;)V

    iput-object p1, p0, Lcom/zui/gallery/app/AlbumSetPage;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method protected onCreateActionBar(Landroid/view/Menu;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onDestroy()V
    .locals 2

    .line 595
    invoke-super {p0}, Lcom/zui/gallery/app/ActivityState;->onDestroy()V

    const-string v0, "AlbumSetPage"

    const-string v1, "AlbumSetPage onDestroy"

    .line 596
    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetPage;->mSlotView:Lcom/zui/gallery/ui/AlbumSetSlotView;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/AlbumSetSlotView;->saveFolderVisibleStatus()V

    .line 600
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetPage;->mAlbumSetView:Lcom/zui/gallery/ui/AlbumSetSlotRenderer;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->destory()V

    .line 605
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetPage;->mActionModeHandler:Lcom/zui/gallery/ui/ActionModeHandler;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/ActionModeHandler;->destroy()V

    .line 606
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetPage;->mCreateFolderDialog:Lzui/app/MessageDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lzui/app/MessageDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 607
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetPage;->mCreateFolderDialog:Lzui/app/MessageDialog;

    invoke-virtual {v0}, Lzui/app/MessageDialog;->dismiss()V

    const/4 v0, 0x0

    .line 608
    iput-object v0, p0, Lcom/zui/gallery/app/AlbumSetPage;->mCreateFolderDialog:Lzui/app/MessageDialog;

    .line 610
    :cond_0
    invoke-direct {p0}, Lcom/zui/gallery/app/AlbumSetPage;->closeFloatDialog()V

    return-void
.end method

.method public onEyePositionChanged(FFF)V
    .locals 1

    .line 292
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetPage;->mRootPane:Lcom/zui/gallery/ui/GLView;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/GLView;->lockRendering()V

    .line 293
    iput p1, p0, Lcom/zui/gallery/app/AlbumSetPage;->mX:F

    .line 294
    iput p2, p0, Lcom/zui/gallery/app/AlbumSetPage;->mY:F

    .line 295
    iput p3, p0, Lcom/zui/gallery/app/AlbumSetPage;->mZ:F

    .line 296
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumSetPage;->mRootPane:Lcom/zui/gallery/ui/GLView;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/GLView;->unlockRendering()V

    .line 297
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumSetPage;->mRootPane:Lcom/zui/gallery/ui/GLView;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/GLView;->invalidate()V

    return-void
.end method

.method public onLongTap(ILandroid/graphics/Rect;)V
    .locals 3

    .line 498
    iget-boolean v0, p0, Lcom/zui/gallery/app/AlbumSetPage;->mGetContent:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/zui/gallery/app/AlbumSetPage;->mGetAlbum:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->isThirdAppCall()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 500
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetPage;->mAlbumSetDataAdapter:Lcom/zui/gallery/app/AlbumSetDataLoader;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/app/AlbumSetDataLoader;->getMediaSet(I)Lcom/zui/gallery/data/MediaSet;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 505
    :cond_1
    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaSet;->isCameraRoll()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaSet;->isFavoriteAlbum()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaSet;->isVideoAlbum()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 515
    :cond_2
    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaSet;->getSystemId()I

    move-result v1

    const/16 v2, 0x9

    if-eq v1, v2, :cond_4

    .line 516
    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaSet;->getSystemId()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_4

    .line 517
    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaSet;->getSystemId()I

    move-result v1

    const/4 v2, 0x7

    if-eq v1, v2, :cond_4

    .line 518
    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaSet;->getSystemId()I

    move-result v1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_4

    .line 519
    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaSet;->getSystemId()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_3

    goto :goto_0

    .line 524
    :cond_3
    iput-object v0, p0, Lcom/zui/gallery/app/AlbumSetPage;->longTapItem:Lcom/zui/gallery/data/MediaSet;

    .line 525
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getAlbum()Lcom/zui/gallery/app/OptimizationAlbum;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zui/gallery/app/OptimizationAlbum;->setLongItemIndex(I)V

    .line 526
    iput-object p2, p0, Lcom/zui/gallery/app/AlbumSetPage;->longTapItemAbslateRect:Landroid/graphics/Rect;

    .line 527
    invoke-direct {p0}, Lcom/zui/gallery/app/AlbumSetPage;->showFloatDialog()V

    .line 530
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumSetPage;->mSlotView:Lcom/zui/gallery/ui/AlbumSetSlotView;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/AlbumSetSlotView;->invalidate()V

    :cond_4
    :goto_0
    return-void

    .line 507
    :cond_5
    :goto_1
    sget-boolean p1, Lcom/zui/gallery/util/LenovoOneGestureDetector;->mouseRightClick:Z

    if-eqz p1, :cond_6

    const/4 p1, 0x0

    .line 508
    sput-boolean p1, Lcom/zui/gallery/util/LenovoOneGestureDetector;->mouseRightClick:Z

    const/4 p1, 0x1

    .line 509
    iput-boolean p1, p0, Lcom/zui/gallery/app/AlbumSetPage;->recordPressedState:Z

    :cond_6
    :goto_2
    return-void
.end method

.method public onPause()V
    .locals 3

    .line 834
    invoke-super {p0}, Lcom/zui/gallery/app/ActivityState;->onPause()V

    const-string v0, "AlbumSetPage"

    const-string v1, "AlbumSetPage onPause"

    .line 835
    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 836
    iput-boolean v0, p0, Lcom/zui/gallery/app/AlbumSetPage;->mIsActive:Z

    .line 837
    iget-object v1, p0, Lcom/zui/gallery/app/AlbumSetPage;->mAlbumSetDataAdapter:Lcom/zui/gallery/app/AlbumSetDataLoader;

    invoke-virtual {v1}, Lcom/zui/gallery/app/AlbumSetDataLoader;->pause()V

    .line 839
    iget-object v1, p0, Lcom/zui/gallery/app/AlbumSetPage;->mAlbumSetView:Lcom/zui/gallery/ui/AlbumSetSlotRenderer;

    invoke-virtual {v1}, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->pause()V

    .line 845
    iget-object v1, p0, Lcom/zui/gallery/app/AlbumSetPage;->mActionModeHandler:Lcom/zui/gallery/ui/ActionModeHandler;

    invoke-virtual {v1}, Lcom/zui/gallery/ui/ActionModeHandler;->pause()V

    .line 846
    iget-object v1, p0, Lcom/zui/gallery/app/AlbumSetPage;->mEyePosition:Lcom/zui/gallery/app/EyePosition;

    invoke-virtual {v1}, Lcom/zui/gallery/app/EyePosition;->pause()V

    .line 851
    iget-object v1, p0, Lcom/zui/gallery/app/AlbumSetPage;->mSyncTask:Lcom/zui/gallery/util/Future;

    if-eqz v1, :cond_0

    .line 852
    invoke-interface {v1}, Lcom/zui/gallery/util/Future;->cancel()V

    const/4 v1, 0x0

    .line 853
    iput-object v1, p0, Lcom/zui/gallery/app/AlbumSetPage;->mSyncTask:Lcom/zui/gallery/util/Future;

    const/4 v1, 0x2

    .line 854
    invoke-direct {p0, v1}, Lcom/zui/gallery/app/AlbumSetPage;->clearLoadingBit(I)V

    .line 857
    :cond_0
    iget-object v1, p0, Lcom/zui/gallery/app/AlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/zui/gallery/app/AlbumSetPage;->coberver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 859
    iget-object v1, p0, Lcom/zui/gallery/app/AlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getCloudTipLayoutController()Lcom/zui/gallery/cloud/CloudTipLayoutController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/zui/gallery/cloud/CloudTipLayoutController;->hideTip(Z)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 872
    invoke-super {p0}, Lcom/zui/gallery/app/ActivityState;->onResume()V

    const-string v0, "AlbumSetPage"

    const-string v1, "onResume"

    .line 873
    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 875
    iput-boolean v0, p0, Lcom/zui/gallery/app/AlbumSetPage;->mIsActive:Z

    .line 876
    iget-object v1, p0, Lcom/zui/gallery/app/AlbumSetPage;->mRootPane:Lcom/zui/gallery/ui/GLView;

    invoke-virtual {p0, v1}, Lcom/zui/gallery/app/AlbumSetPage;->setContentPane(Lcom/zui/gallery/ui/GLView;)V

    .line 877
    invoke-direct {p0}, Lcom/zui/gallery/app/AlbumSetPage;->checkNeededRefreshFolder()V

    .line 878
    invoke-direct {p0}, Lcom/zui/gallery/app/AlbumSetPage;->initTitleBar()V

    .line 879
    invoke-direct {p0}, Lcom/zui/gallery/app/AlbumSetPage;->updateTitleBar()V

    .line 881
    invoke-direct {p0, v0}, Lcom/zui/gallery/app/AlbumSetPage;->setLoadingBit(I)V

    .line 882
    iget-object v1, p0, Lcom/zui/gallery/app/AlbumSetPage;->mAlbumSetDataAdapter:Lcom/zui/gallery/app/AlbumSetDataLoader;

    invoke-virtual {v1}, Lcom/zui/gallery/app/AlbumSetDataLoader;->resume()V

    .line 884
    iget-object v1, p0, Lcom/zui/gallery/app/AlbumSetPage;->mAlbumSetView:Lcom/zui/gallery/ui/AlbumSetSlotRenderer;

    invoke-virtual {v1}, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->resume()V

    .line 885
    iget-object v1, p0, Lcom/zui/gallery/app/AlbumSetPage;->mEyePosition:Lcom/zui/gallery/app/EyePosition;

    invoke-virtual {v1}, Lcom/zui/gallery/app/EyePosition;->resume()V

    .line 886
    iget-object v1, p0, Lcom/zui/gallery/app/AlbumSetPage;->mActionModeHandler:Lcom/zui/gallery/ui/ActionModeHandler;

    invoke-virtual {v1}, Lcom/zui/gallery/ui/ActionModeHandler;->resume()V

    .line 888
    iget-boolean v1, p0, Lcom/zui/gallery/app/AlbumSetPage;->mInitialSynced:Z

    if-nez v1, :cond_0

    const/4 v1, 0x2

    .line 889
    invoke-direct {p0, v1}, Lcom/zui/gallery/app/AlbumSetPage;->setLoadingBit(I)V

    .line 890
    iget-object v1, p0, Lcom/zui/gallery/app/AlbumSetPage;->mMediaSet:Lcom/zui/gallery/data/MediaSet;

    invoke-virtual {v1, p0}, Lcom/zui/gallery/data/MediaSet;->requestSync(Lcom/zui/gallery/data/MediaSet$SyncListener;)Lcom/zui/gallery/util/Future;

    move-result-object v1

    iput-object v1, p0, Lcom/zui/gallery/app/AlbumSetPage;->mSyncTask:Lcom/zui/gallery/util/Future;

    .line 892
    :cond_0
    iget-object v1, p0, Lcom/zui/gallery/app/AlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v1, v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->showTab(Z)V

    .line 893
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    sget-object v1, Lcom/zui/gallery/app/TabManager$TabIndex;->TAB_ALBUM:Lcom/zui/gallery/app/TabManager$TabIndex;

    invoke-virtual {v0, v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->updateTabIndex(Lcom/zui/gallery/app/TabManager$TabIndex;)V

    .line 894
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->showHeader()V

    .line 904
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->isThirdAppCall()Z

    move-result v0

    if-nez v0, :cond_1

    .line 905
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getCloudTipLayoutController()Lcom/zui/gallery/cloud/CloudTipLayoutController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zui/gallery/cloud/CloudTipLayoutController;->showTip(Z)V

    .line 908
    :cond_1
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-static {v0}, Lcom/zui/gallery/app/Config$AlbumSetPage;->get(Lcom/zui/gallery/app/AbstractGalleryActivity;)Lcom/zui/gallery/app/Config$AlbumSetPage;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/app/AlbumSetPage;->mConfig:Lcom/zui/gallery/app/Config$AlbumSetPage;

    .line 909
    iget-object v1, p0, Lcom/zui/gallery/app/AlbumSetPage;->mSlotView:Lcom/zui/gallery/ui/AlbumSetSlotView;

    iget-object v0, v0, Lcom/zui/gallery/app/Config$AlbumSetPage;->slotViewSpec:Lcom/zui/gallery/ui/AlbumSetSlotView$Spec;

    invoke-virtual {v1, v0}, Lcom/zui/gallery/ui/AlbumSetSlotView;->setSlotSpec(Lcom/zui/gallery/ui/AlbumSetSlotView$Spec;)V

    .line 910
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetPage;->mSlotView:Lcom/zui/gallery/ui/AlbumSetSlotView;

    if-eqz v0, :cond_2

    .line 911
    invoke-virtual {v0}, Lcom/zui/gallery/ui/AlbumSetSlotView;->resume()V

    .line 912
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetPage;->mSlotView:Lcom/zui/gallery/ui/AlbumSetSlotView;

    iget-boolean v1, p0, Lcom/zui/gallery/app/AlbumSetPage;->mGetContent:Z

    invoke-virtual {v0, v1}, Lcom/zui/gallery/ui/AlbumSetSlotView;->setGetContent(Z)V

    .line 914
    :cond_2
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetPage;->mAlbumSetView:Lcom/zui/gallery/ui/AlbumSetSlotRenderer;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->onConfigChanged()V

    return-void
.end method

.method public onSelectionChange(Lcom/zui/gallery/data/Path;Z)V
    .locals 1

    .line 1263
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetPage;->mActionModeHandler:Lcom/zui/gallery/ui/ActionModeHandler;

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

    .line 1251
    :cond_0
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumSetPage;->mAlbumSetView:Lcom/zui/gallery/ui/AlbumSetSlotRenderer;

    invoke-virtual {p1, v1}, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->setNeedMark(Z)V

    .line 1252
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumSetPage;->mActionModeHandler:Lcom/zui/gallery/ui/ActionModeHandler;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/ActionModeHandler;->updateSupportedOperation()V

    .line 1255
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumSetPage;->mRootPane:Lcom/zui/gallery/ui/GLView;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/GLView;->invalidate()V

    goto :goto_0

    .line 1243
    :cond_1
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumSetPage;->mActionModeHandler:Lcom/zui/gallery/ui/ActionModeHandler;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/ActionModeHandler;->updateSupportedOperation()V

    .line 1244
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumSetPage;->mRootPane:Lcom/zui/gallery/ui/GLView;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/GLView;->invalidate()V

    goto :goto_0

    .line 1234
    :cond_2
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumSetPage;->mActionModeHandler:Lcom/zui/gallery/ui/ActionModeHandler;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/ActionModeHandler;->finishActionMode()V

    .line 1237
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumSetPage;->mAlbumSetView:Lcom/zui/gallery/ui/AlbumSetSlotRenderer;

    invoke-virtual {p1, v0}, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->setNeedMark(Z)V

    .line 1239
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumSetPage;->mRootPane:Lcom/zui/gallery/ui/GLView;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/GLView;->invalidate()V

    goto :goto_0

    .line 1222
    :cond_3
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumSetPage;->mActionModeHandler:Lcom/zui/gallery/ui/ActionModeHandler;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/ActionModeHandler;->startActionMode()V

    .line 1223
    invoke-virtual {p0, v0}, Lcom/zui/gallery/app/AlbumSetPage;->performHapticFeedback(I)V

    .line 1227
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumSetPage;->mAlbumSetView:Lcom/zui/gallery/ui/AlbumSetSlotRenderer;

    invoke-virtual {p1, v1}, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->setNeedMark(Z)V

    .line 1228
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumSetPage;->mRootPane:Lcom/zui/gallery/ui/GLView;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/GLView;->invalidate()V

    :goto_0
    return-void
.end method

.method public onSingleTapUp(I)V
    .locals 3

    .line 335
    iget-boolean v0, p0, Lcom/zui/gallery/app/AlbumSetPage;->mIsActive:Z

    if-nez v0, :cond_0

    return-void

    .line 338
    :cond_0
    iget-boolean v0, p0, Lcom/zui/gallery/app/AlbumSetPage;->recordPressedState:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 339
    iput-boolean v1, p0, Lcom/zui/gallery/app/AlbumSetPage;->recordPressedState:Z

    return-void

    .line 343
    :cond_1
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 344
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetPage;->mAlbumSetDataAdapter:Lcom/zui/gallery/app/AlbumSetDataLoader;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/app/AlbumSetDataLoader;->getMediaSet(I)Lcom/zui/gallery/data/MediaSet;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    .line 348
    :cond_2
    invoke-virtual {p1}, Lcom/zui/gallery/data/MediaSet;->isCameraRoll()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1}, Lcom/zui/gallery/data/MediaSet;->isFavoriteAlbum()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 352
    :cond_3
    invoke-virtual {p1}, Lcom/zui/gallery/data/MediaSet;->getSystemId()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_4

    return-void

    .line 357
    :cond_4
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {p1}, Lcom/zui/gallery/data/MediaSet;->getPath()Lcom/zui/gallery/data/Path;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/zui/gallery/ui/SelectionManager;->toggle(Lcom/zui/gallery/data/Path;)V

    .line 358
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumSetPage;->mSlotView:Lcom/zui/gallery/ui/AlbumSetSlotView;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/AlbumSetSlotView;->invalidate()V

    goto :goto_1

    :cond_5
    :goto_0
    return-void

    .line 362
    :cond_6
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetPage;->mAlbumSetView:Lcom/zui/gallery/ui/AlbumSetSlotRenderer;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->setPressedIndex(I)V

    .line 363
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetPage;->mAlbumSetView:Lcom/zui/gallery/ui/AlbumSetSlotRenderer;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->setPressedUp()V

    .line 364
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetPage;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v1, 0x50

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_1
    return-void
.end method

.method protected onStateResult(IILandroid/content/Intent;)V
    .locals 0

    const/16 p3, 0x22b8

    if-eq p1, p3, :cond_0

    goto :goto_0

    .line 1195
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onStateResult , resultcode is "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "privatekey"

    invoke-static {p3, p1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    .line 1197
    invoke-direct {p0}, Lcom/zui/gallery/app/AlbumSetPage;->startPrivacyListActivity()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onSyncDone(Lcom/zui/gallery/data/MediaSet;I)V
    .locals 2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 1270
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

    .line 1273
    :cond_0
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    new-instance v0, Lcom/zui/gallery/app/AlbumSetPage$7;

    invoke-direct {v0, p0, p2}, Lcom/zui/gallery/app/AlbumSetPage$7;-><init>(Lcom/zui/gallery/app/AlbumSetPage;I)V

    invoke-virtual {p1, v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected updateTitleBarVisibility(Landroid/content/res/Configuration;)V
    .locals 6

    .line 1706
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getTitleBar()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f080370

    .line 1707
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 1708
    iget-object v1, p0, Lcom/zui/gallery/app/AlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getHeadRoot()Landroid/view/View;

    move-result-object v1

    .line 1709
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const-string v2, ""

    const v3, 0x7f0501dc

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-ne p1, v5, :cond_4

    .line 1710
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumSetPage;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1711
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getStateManager()Lcom/zui/gallery/app/StateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/gallery/app/StateManager;->getTopState()Lcom/zui/gallery/app/ActivityState;

    move-result-object p1

    instance-of p1, p1, Lcom/zui/gallery/app/AlbumSetPage;

    if-eqz p1, :cond_0

    .line 1712
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumSetPage;->mTitle_left_bar:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1713
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumSetPage;->mLeftTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/zui/gallery/app/AlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const v5, 0x7f100045

    invoke-virtual {v2, v5}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1714
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumSetPage;->mLeftTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1715
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumSetPage;->mLeftTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/zui/gallery/app/AlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f06008b

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v4, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1716
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumSetPage;->mLeftTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/zui/gallery/app/AlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const v5, 0x7f0501e0

    invoke-virtual {v2, v5}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getColor(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1718
    :cond_0
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    iget-boolean p1, p1, Lcom/zui/gallery/app/AbstractGalleryActivity;->isThirdAppCall:Z

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/zui/gallery/app/AlbumSetPage;->mGetContent:Z

    if-eqz p1, :cond_1

    goto :goto_0

    .line 1726
    :cond_1
    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 1720
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-static {p1}, Lcom/zui/gallery/util/DeviceTypeUtils;->isPad(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1721
    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    :cond_3
    const p1, 0x7f050207

    .line 1723
    invoke-virtual {v1, p1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 1729
    :cond_4
    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1730
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getStateManager()Lcom/zui/gallery/app/StateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/gallery/app/StateManager;->getTopState()Lcom/zui/gallery/app/ActivityState;

    move-result-object p1

    instance-of p1, p1, Lcom/zui/gallery/app/AlbumSetPage;

    if-eqz p1, :cond_5

    .line 1731
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumSetPage;->titleTextView:Landroid/widget/TextView;

    const v1, 0x7f100281

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 1733
    :cond_5
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumSetPage;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1737
    :goto_1
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    iget-boolean p1, p1, Lcom/zui/gallery/app/AbstractGalleryActivity;->isThirdAppCall:Z

    if-nez p1, :cond_6

    goto :goto_2

    :cond_6
    const/4 v4, 0x4

    :goto_2
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method
