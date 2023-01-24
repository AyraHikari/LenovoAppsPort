.class public Lcom/zui/gallery/app/AlbumSetAddPage;
.super Lcom/zui/gallery/app/ActivityState;
.source "AlbumSetAddPage.java"

# interfaces
.implements Lcom/zui/gallery/ui/SelectionManager$SelectionListener;
.implements Lcom/zui/gallery/app/EyePosition$EyePositionListener;
.implements Lcom/zui/gallery/data/MediaSet$SyncListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/app/AlbumSetAddPage$MyDetailsSource;,
        Lcom/zui/gallery/app/AlbumSetAddPage$MyLoadingListener;
    }
.end annotation


# static fields
.field public static ADD_TO_GROUP_SUBTITLE:Ljava/lang/String; = null

.field private static final BIT_LOADING_RELOAD:I = 0x1

.field private static final BIT_LOADING_SYNC:I = 0x2

.field private static final DATA_CACHE_SIZE:I = 0x100

.field public static IS_ALBUMPAGE_CALL:Ljava/lang/String; = null

.field public static IS_LOCAL_TIME_ALBUM_PAGE_CALL:Ljava/lang/String; = null

.field public static final KEY_MEDIA_CLOUD_IDS:Ljava/lang/String; = "cloud-item-ids"

.field public static final KEY_MEDIA_IMAGE_PATHS:Ljava/lang/String; = "media-image-paths"

.field public static final KEY_MEDIA_PATH:Ljava/lang/String; = "media-path"

.field public static final KEY_MEDIA_VIDEO_PATHS:Ljava/lang/String; = "media-video-paths"

.field public static final KEY_SELECTED_CLUSTER_TYPE:Ljava/lang/String; = "selected-cluster"

.field public static final KEY_SET_SUBTITLE:Ljava/lang/String; = "set-subtitle"

.field public static final KEY_SET_TITLE:Ljava/lang/String; = "set-title"

.field private static final MSG_ADD_COMPLETE:I = 0x2

.field private static final MSG_GROUP_SYNC:I = 0x3

.field private static final MSG_PICK_ALBUM:I = 0x1

.field private static final MSG_SHOW_PROGRESS:I = 0x4

.field private static final REQUEST_DO_ANIMATION:I = 0x1

.field public static final SHOW_DIALOG_MAX_SIZE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AlbumSetAddPage"

.field private static mNeedGroupAlbumSync:Z

.field public static needAddPathMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/zui/gallery/data/Path;",
            "Ljava/util/Set<",
            "Lcom/zui/gallery/data/Path;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private addFolderImageView:Landroid/widget/ImageView;

.field private addGroupStr:Ljava/lang/String;

.field private animation:Landroid/view/animation/Animation;

.field private isAlbumpageCall:Z

.field private isLocalTimeAlbumpageCall:Z

.field private leftIcon:Landroid/widget/ImageView;

.field protected mActionBar:Lcom/zui/gallery/app/GalleryActionBar;

.field private mActionModeHandler:Lcom/zui/gallery/ui/ActionModeHandler;

.field protected mAdd2GroupAlbum:Z

.field private mAddGroupId:I

.field private mAlbumSetDataAdapter:Lcom/zui/gallery/app/AlbumSetDataLoader;

.field private mAlbumSetView:Lcom/zui/gallery/ui/AlbumSetAddSlotRenderer;

.field private mConfig:Lcom/zui/gallery/app/Config$AlbumSetPage;

.field private mCreateFolderDialog:Lzui/app/MessageDialog;

.field private mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field mEmptyAlbumToast:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/Toast;",
            ">;"
        }
    .end annotation
.end field

.field private mEyePosition:Lcom/zui/gallery/app/EyePosition;

.field private mHandler:Landroid/os/Handler;

.field private mInitialSynced:Z

.field private mIsActive:Z

.field private mLoadingBits:I

.field private mMediaSet:Lcom/zui/gallery/data/MediaSet;

.field private mProgressDialog:Lzui/app/ProgressDialogX;

.field private final mRootPane:Lcom/zui/gallery/ui/GLView;

.field private mSelectedAction:I

.field protected mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

.field private mShouldShowProgress:Z

.field private mShowedEmptyToastForSelf:Z

.field private mSlotView:Lcom/zui/gallery/ui/AlbumSetSlotView;

.field private mSyncTask:Lcom/zui/gallery/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/zui/gallery/util/Future<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTitle:Ljava/lang/String;

.field private mX:F

.field private mY:F

.field private mZ:F

.field private rightSelectImageView:Landroid/widget/ImageView;

.field private rightTextView:Landroid/widget/TextView;

.field private settingView:Landroid/view/View;

.field private subTitleView:Landroid/widget/TextView;

.field private titleBarLeftContainer:Landroid/widget/LinearLayout;

.field private titleBarRightContainer:Landroid/widget/LinearLayout;

.field private titleView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 146
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/zui/gallery/app/AlbumSetAddPage;->needAddPathMap:Ljava/util/Map;

    const/4 v0, 0x0

    .line 197
    sput-boolean v0, Lcom/zui/gallery/app/AlbumSetAddPage;->mNeedGroupAlbumSync:Z

    const-string v0, "add-to-group-subtitle"

    .line 202
    sput-object v0, Lcom/zui/gallery/app/AlbumSetAddPage;->ADD_TO_GROUP_SUBTITLE:Ljava/lang/String;

    const-string v0, "is_albumpage_call"

    .line 204
    sput-object v0, Lcom/zui/gallery/app/AlbumSetAddPage;->IS_ALBUMPAGE_CALL:Ljava/lang/String;

    const-string v0, "is_local_time_album_page_call"

    .line 205
    sput-object v0, Lcom/zui/gallery/app/AlbumSetAddPage;->IS_LOCAL_TIME_ALBUM_PAGE_CALL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 106
    invoke-direct {p0}, Lcom/zui/gallery/app/ActivityState;-><init>()V

    const/4 v0, 0x0

    .line 148
    iput-boolean v0, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mIsActive:Z

    const/4 v1, 0x0

    .line 180
    iput-object v1, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mSyncTask:Lcom/zui/gallery/util/Future;

    .line 182
    iput v0, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mLoadingBits:I

    .line 183
    iput-boolean v0, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mInitialSynced:Z

    .line 185
    iput-boolean v0, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mShowedEmptyToastForSelf:Z

    .line 192
    iput-object v1, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mProgressDialog:Lzui/app/ProgressDialogX;

    .line 193
    iput-boolean v0, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mShouldShowProgress:Z

    .line 206
    iput-boolean v0, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->isAlbumpageCall:Z

    .line 207
    iput-boolean v0, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->isLocalTimeAlbumpageCall:Z

    .line 215
    new-instance v0, Lcom/zui/gallery/app/AlbumSetAddPage$1;

    invoke-direct {v0, p0}, Lcom/zui/gallery/app/AlbumSetAddPage$1;-><init>(Lcom/zui/gallery/app/AlbumSetAddPage;)V

    iput-object v0, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mRootPane:Lcom/zui/gallery/ui/GLView;

    .line 306
    iput-object v1, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mEmptyAlbumToast:Ljava/lang/ref/WeakReference;

    .line 485
    new-instance v0, Lcom/zui/gallery/app/AlbumSetAddPage$5;

    invoke-direct {v0, p0}, Lcom/zui/gallery/app/AlbumSetAddPage$5;-><init>(Lcom/zui/gallery/app/AlbumSetAddPage;)V

    iput-object v0, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    return-void
.end method

.method static synthetic access$000(Lcom/zui/gallery/app/AlbumSetAddPage;)Lcom/zui/gallery/app/EyePosition;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mEyePosition:Lcom/zui/gallery/app/EyePosition;

    return-object p0
.end method

.method static synthetic access$100(Lcom/zui/gallery/app/AlbumSetAddPage;)Lcom/zui/gallery/app/Config$AlbumSetPage;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mConfig:Lcom/zui/gallery/app/Config$AlbumSetPage;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/zui/gallery/app/AlbumSetAddPage;I)V
    .locals 0

    .line 106
    invoke-direct {p0, p1}, Lcom/zui/gallery/app/AlbumSetAddPage;->pickAlbum(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/zui/gallery/app/AlbumSetAddPage;)Lzui/app/ProgressDialogX;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mProgressDialog:Lzui/app/ProgressDialogX;

    return-object p0
.end method

.method static synthetic access$1102(Lcom/zui/gallery/app/AlbumSetAddPage;Lzui/app/ProgressDialogX;)Lzui/app/ProgressDialogX;
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mProgressDialog:Lzui/app/ProgressDialogX;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/zui/gallery/app/AlbumSetAddPage;)Landroid/content/DialogInterface$OnDismissListener;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/zui/gallery/app/AlbumSetAddPage;)Z
    .locals 0

    .line 106
    iget-boolean p0, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->isAlbumpageCall:Z

    return p0
.end method

.method static synthetic access$1400(Lcom/zui/gallery/app/AlbumSetAddPage;)Z
    .locals 0

    .line 106
    iget-boolean p0, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->isLocalTimeAlbumpageCall:Z

    return p0
.end method

.method static synthetic access$1502(Z)Z
    .locals 0

    .line 106
    sput-boolean p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mNeedGroupAlbumSync:Z

    return p0
.end method

.method static synthetic access$1600(Lcom/zui/gallery/app/AlbumSetAddPage;)V
    .locals 0

    .line 106
    invoke-direct {p0}, Lcom/zui/gallery/app/AlbumSetAddPage;->onResumeReal()V

    return-void
.end method

.method static synthetic access$1800(Lcom/zui/gallery/app/AlbumSetAddPage;I)V
    .locals 0

    .line 106
    invoke-direct {p0, p1}, Lcom/zui/gallery/app/AlbumSetAddPage;->onDown(I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/zui/gallery/app/AlbumSetAddPage;Z)V
    .locals 0

    .line 106
    invoke-direct {p0, p1}, Lcom/zui/gallery/app/AlbumSetAddPage;->onUp(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/zui/gallery/app/AlbumSetAddPage;)Lcom/zui/gallery/ui/AlbumSetAddSlotRenderer;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mAlbumSetView:Lcom/zui/gallery/ui/AlbumSetAddSlotRenderer;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/zui/gallery/app/AlbumSetAddPage;)V
    .locals 0

    .line 106
    invoke-direct {p0}, Lcom/zui/gallery/app/AlbumSetAddPage;->showAddGroupDialog()V

    return-void
.end method

.method static synthetic access$2100(Lcom/zui/gallery/app/AlbumSetAddPage;)Lzui/app/MessageDialog;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mCreateFolderDialog:Lzui/app/MessageDialog;

    return-object p0
.end method

.method static synthetic access$2202(Lcom/zui/gallery/app/AlbumSetAddPage;Z)Z
    .locals 0

    .line 106
    iput-boolean p1, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mInitialSynced:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/zui/gallery/app/AlbumSetAddPage;I)V
    .locals 0

    .line 106
    invoke-direct {p0, p1}, Lcom/zui/gallery/app/AlbumSetAddPage;->clearLoadingBit(I)V

    return-void
.end method

.method static synthetic access$2400(Lcom/zui/gallery/app/AlbumSetAddPage;)Z
    .locals 0

    .line 106
    iget-boolean p0, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mIsActive:Z

    return p0
.end method

.method static synthetic access$2500(Lcom/zui/gallery/app/AlbumSetAddPage;I)V
    .locals 0

    .line 106
    invoke-direct {p0, p1}, Lcom/zui/gallery/app/AlbumSetAddPage;->setLoadingBit(I)V

    return-void
.end method

.method static synthetic access$2600(Lcom/zui/gallery/app/AlbumSetAddPage;)Lcom/zui/gallery/app/AlbumSetDataLoader;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mAlbumSetDataAdapter:Lcom/zui/gallery/app/AlbumSetDataLoader;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/zui/gallery/app/AlbumSetAddPage;)I
    .locals 0

    .line 106
    iget p0, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mAddGroupId:I

    return p0
.end method

.method static synthetic access$2800(Lcom/zui/gallery/app/AlbumSetAddPage;)V
    .locals 0

    .line 106
    invoke-direct {p0}, Lcom/zui/gallery/app/AlbumSetAddPage;->addPic()V

    return-void
.end method

.method static synthetic access$300(Lcom/zui/gallery/app/AlbumSetAddPage;)Lcom/zui/gallery/ui/AlbumSetSlotView;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mSlotView:Lcom/zui/gallery/ui/AlbumSetSlotView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/zui/gallery/app/AlbumSetAddPage;)F
    .locals 0

    .line 106
    iget p0, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mX:F

    return p0
.end method

.method static synthetic access$500(Lcom/zui/gallery/app/AlbumSetAddPage;)F
    .locals 0

    .line 106
    iget p0, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mY:F

    return p0
.end method

.method static synthetic access$600(Lcom/zui/gallery/app/AlbumSetAddPage;)F
    .locals 0

    .line 106
    iget p0, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mZ:F

    return p0
.end method

.method static synthetic access$700(Lcom/zui/gallery/app/AlbumSetAddPage;)Landroid/os/Handler;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$800(Lcom/zui/gallery/app/AlbumSetAddPage;IZ)V
    .locals 0

    .line 106
    invoke-direct {p0, p1, p2}, Lcom/zui/gallery/app/AlbumSetAddPage;->insertGroupAlbum(IZ)V

    return-void
.end method

.method static synthetic access$900(Lcom/zui/gallery/app/AlbumSetAddPage;)Z
    .locals 0

    .line 106
    iget-boolean p0, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mShouldShowProgress:Z

    return p0
.end method

.method static synthetic access$902(Lcom/zui/gallery/app/AlbumSetAddPage;Z)Z
    .locals 0

    .line 106
    iput-boolean p1, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mShouldShowProgress:Z

    return p1
.end method

.method private addPic()V
    .locals 9

    .line 1255
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1256
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1257
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1258
    sget-object v3, Lcom/zui/gallery/app/AlbumSetAddPage;->needAddPathMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 1259
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    .line 1260
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/zui/gallery/data/Path;

    .line 1262
    iget-object v6, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getDataManager()Lcom/zui/gallery/data/DataManager;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/zui/gallery/data/DataManager;->getMediaObject(Lcom/zui/gallery/data/Path;)Lcom/zui/gallery/data/MediaObject;

    move-result-object v5

    .line 1264
    invoke-virtual {v5}, Lcom/zui/gallery/data/MediaObject;->isMediaSet()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1265
    check-cast v5, Lcom/zui/gallery/data/LocalAlbum;

    .line 1266
    invoke-virtual {v5}, Lcom/zui/gallery/data/LocalAlbum;->getCoverMediaItem()Lcom/zui/gallery/data/MediaItem;

    move-result-object v5

    invoke-virtual {v5}, Lcom/zui/gallery/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v5

    .line 1267
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1269
    :cond_2
    check-cast v5, Lcom/zui/gallery/data/MediaItem;

    .line 1270
    invoke-virtual {v5}, Lcom/zui/gallery/data/MediaItem;->getMediaType()I

    move-result v6

    .line 1271
    invoke-virtual {v5}, Lcom/zui/gallery/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v7

    .line 1272
    instance-of v8, v5, Lcom/zui/gallery/data/CloudImage;

    if-eqz v8, :cond_3

    .line 1273
    check-cast v5, Lcom/zui/gallery/data/CloudImage;

    invoke-virtual {v5}, Lcom/zui/gallery/data/CloudImage;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    const/4 v5, 0x2

    if-ne v6, v5, :cond_4

    .line 1275
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1276
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1278
    :cond_4
    invoke-static {v6}, Lcom/zui/gallery/data/MediaObject;->isVideoType(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1279
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1280
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "-"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1281
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1291
    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v3, v4

    const/4 v4, 0x1

    if-le v3, v4, :cond_6

    .line 1292
    iget-object v3, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1295
    :cond_6
    new-instance v3, Lcom/zui/gallery/app/AlbumSetAddPage$13;

    invoke-direct {v3, p0, v0, v1, v2}, Lcom/zui/gallery/app/AlbumSetAddPage$13;-><init>(Lcom/zui/gallery/app/AlbumSetAddPage;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1309
    invoke-virtual {v3}, Lcom/zui/gallery/app/AlbumSetAddPage$13;->start()V

    return-void
.end method

.method public static cleanAddPath(Lcom/zui/gallery/data/Path;)V
    .locals 1

    .line 1185
    sget-object v0, Lcom/zui/gallery/app/AlbumSetAddPage;->needAddPathMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    if-eqz p0, :cond_0

    .line 1187
    invoke-interface {p0}, Ljava/util/Set;->clear()V

    :cond_0
    return-void
.end method

.method public static clearClicked()V
    .locals 2

    .line 1217
    sget-object v0, Lcom/zui/gallery/app/AlbumSetAddPage;->needAddPathMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1218
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    goto :goto_0

    .line 1220
    :cond_0
    sget-object v0, Lcom/zui/gallery/app/AlbumSetAddPage;->needAddPathMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method private clearLoadingBit(I)V
    .locals 2

    .line 629
    iget v0, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mLoadingBits:I

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mLoadingBits:I

    if-nez p1, :cond_1

    .line 630
    iget-boolean p1, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mIsActive:Z

    if-eqz p1, :cond_1

    .line 631
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mAlbumSetDataAdapter:Lcom/zui/gallery/app/AlbumSetDataLoader;

    invoke-virtual {p1}, Lcom/zui/gallery/app/AlbumSetDataLoader;->size()I

    move-result p1

    if-nez p1, :cond_1

    .line 640
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getStateManager()Lcom/zui/gallery/app/StateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/gallery/app/StateManager;->getStateCount()I

    move-result p1

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    .line 641
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v1, "empty-album"

    .line 642
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v0, -0x1

    .line 643
    invoke-virtual {p0, v0, p1}, Lcom/zui/gallery/app/AlbumSetAddPage;->setStateResult(ILandroid/content/Intent;)V

    .line 644
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getStateManager()Lcom/zui/gallery/app/StateManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/zui/gallery/app/StateManager;->finishState(Lcom/zui/gallery/app/ActivityState;)V

    goto :goto_0

    .line 646
    :cond_0
    iput-boolean v0, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mShowedEmptyToastForSelf:Z

    .line 647
    invoke-direct {p0, v0}, Lcom/zui/gallery/app/AlbumSetAddPage;->showEmptyAlbumToast(I)V

    .line 648
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mSlotView:Lcom/zui/gallery/ui/AlbumSetSlotView;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/AlbumSetSlotView;->invalidate()V

    :goto_0
    return-void

    .line 656
    :cond_1
    iget-boolean p1, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mShowedEmptyToastForSelf:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 657
    iput-boolean p1, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mShowedEmptyToastForSelf:Z

    .line 658
    invoke-direct {p0}, Lcom/zui/gallery/app/AlbumSetAddPage;->hideEmptyAlbumToast()V

    :cond_2
    return-void
.end method

.method public static getAddPath(Lcom/zui/gallery/data/Path;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zui/gallery/data/Path;",
            ")",
            "Ljava/util/Set<",
            "Lcom/zui/gallery/data/Path;",
            ">;"
        }
    .end annotation

    .line 1176
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1177
    sget-object v1, Lcom/zui/gallery/app/AlbumSetAddPage;->needAddPathMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    if-eqz p0, :cond_0

    .line 1178
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 1179
    invoke-interface {v0, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-object v0
.end method

.method private getSelectedString()Ljava/lang/String;
    .locals 4

    .line 1043
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/SelectionManager;->getSelectedCount()I

    move-result v0

    .line 1045
    iget-object v1, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0004

    invoke-virtual {v1, v2, v0}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 1046
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

    .line 277
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 278
    iget-object v1, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mRootPane:Lcom/zui/gallery/ui/GLView;

    iget-object v2, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mSlotView:Lcom/zui/gallery/ui/AlbumSetSlotView;

    invoke-virtual {v1, v2, v0}, Lcom/zui/gallery/ui/GLView;->getBoundsOf(Lcom/zui/gallery/ui/GLView;Landroid/graphics/Rect;)Z

    .line 279
    iget-object v1, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mSlotView:Lcom/zui/gallery/ui/AlbumSetSlotView;

    invoke-virtual {v1, p1}, Lcom/zui/gallery/ui/AlbumSetSlotView;->getSlotRect(I)Landroid/graphics/Rect;

    move-result-object p1

    .line 280
    iget-object v1, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mSlotView:Lcom/zui/gallery/ui/AlbumSetSlotView;

    invoke-virtual {v1}, Lcom/zui/gallery/ui/AlbumSetSlotView;->getScrollX()I

    move-result v1

    .line 281
    iget-object v2, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mSlotView:Lcom/zui/gallery/ui/AlbumSetSlotView;

    invoke-virtual {v2}, Lcom/zui/gallery/ui/AlbumSetSlotView;->getScrollY()I

    move-result v2

    .line 282
    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget v4, p1, Landroid/graphics/Rect;->left:I

    iget v5, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    sub-int/2addr v3, v1

    const/4 v1, 0x0

    aput v3, p2, v1

    .line 283
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

.method private hideEmptyAlbumToast()V
    .locals 1

    .line 323
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mEmptyAlbumToast:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 324
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 326
    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    :cond_0
    return-void
.end method

.method private initTitleBar()V
    .locals 4

    .line 1322
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getTitleBar()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f08036e

    .line 1323
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->subTitleView:Landroid/widget/TextView;

    const v1, 0x7f08036d

    .line 1324
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->titleView:Landroid/widget/TextView;

    .line 1325
    iget-object v2, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060349

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    const v1, 0x7f08036f

    .line 1326
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->titleBarLeftContainer:Landroid/widget/LinearLayout;

    const v1, 0x7f080214

    .line 1327
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->leftIcon:Landroid/widget/ImageView;

    .line 1329
    iget-object v1, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->titleBarLeftContainer:Landroid/widget/LinearLayout;

    const v2, 0x7f080215

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f080370

    .line 1331
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->titleBarRightContainer:Landroid/widget/LinearLayout;

    const v1, 0x7f0802cd

    .line 1332
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->addFolderImageView:Landroid/widget/ImageView;

    const v1, 0x7f0802ca

    .line 1333
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->rightSelectImageView:Landroid/widget/ImageView;

    .line 1334
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->titleBarRightContainer:Landroid/widget/LinearLayout;

    const v1, 0x7f0802ce

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->rightTextView:Landroid/widget/TextView;

    .line 1335
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->titleBarRightContainer:Landroid/widget/LinearLayout;

    const v1, 0x7f0802cb

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->settingView:Landroid/view/View;

    .line 1336
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const v1, 0x7f01000c

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->animation:Landroid/view/animation/Animation;

    return-void
.end method

.method private initializeData(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "media-path"

    .line 758
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "addGroupId"

    const/4 v1, -0x1

    .line 759
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mAddGroupId:I

    .line 760
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mAlbumSetView:Lcom/zui/gallery/ui/AlbumSetAddSlotRenderer;

    if-ne p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Lcom/zui/gallery/ui/AlbumSetAddSlotRenderer;->setNeedMark(Z)V

    .line 764
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getDataManager()Lcom/zui/gallery/data/DataManager;

    move-result-object p1

    const-string v0, "/local/all/albumsetadd"

    invoke-virtual {p1, v0}, Lcom/zui/gallery/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/zui/gallery/data/MediaSet;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mMediaSet:Lcom/zui/gallery/data/MediaSet;

    .line 765
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/ui/SelectionManager;->setSourceMediaSet(Lcom/zui/gallery/data/MediaSet;)V

    .line 766
    new-instance p1, Lcom/zui/gallery/app/AlbumSetDataLoader;

    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    iget-object v1, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mMediaSet:Lcom/zui/gallery/data/MediaSet;

    const/16 v2, 0x100

    invoke-direct {p1, v0, v1, v2}, Lcom/zui/gallery/app/AlbumSetDataLoader;-><init>(Lcom/zui/gallery/app/AbstractGalleryActivity;Lcom/zui/gallery/data/MediaSet;I)V

    iput-object p1, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mAlbumSetDataAdapter:Lcom/zui/gallery/app/AlbumSetDataLoader;

    .line 768
    new-instance v0, Lcom/zui/gallery/app/AlbumSetAddPage$MyLoadingListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/zui/gallery/app/AlbumSetAddPage$MyLoadingListener;-><init>(Lcom/zui/gallery/app/AlbumSetAddPage;Lcom/zui/gallery/app/AlbumSetAddPage$1;)V

    invoke-virtual {p1, v0}, Lcom/zui/gallery/app/AlbumSetDataLoader;->setLoadingListener(Lcom/zui/gallery/app/LoadingListener;)V

    .line 769
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mAlbumSetView:Lcom/zui/gallery/ui/AlbumSetAddSlotRenderer;

    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mAlbumSetDataAdapter:Lcom/zui/gallery/app/AlbumSetDataLoader;

    invoke-virtual {p1, v0}, Lcom/zui/gallery/ui/AlbumSetAddSlotRenderer;->setModel(Lcom/zui/gallery/app/AlbumSetDataLoader;)V

    return-void
.end method

.method private initializeViews()V
    .locals 9

    .line 774
    new-instance v0, Lcom/zui/gallery/ui/SelectionManager;

    iget-object v1, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/zui/gallery/ui/SelectionManager;-><init>(Lcom/zui/gallery/app/AbstractGalleryActivity;Z)V

    iput-object v0, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    .line 775
    invoke-virtual {v0, p0}, Lcom/zui/gallery/ui/SelectionManager;->setSelectionListener(Lcom/zui/gallery/ui/SelectionManager$SelectionListener;)V

    .line 777
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-static {v0}, Lcom/zui/gallery/app/Config$AlbumSetPage;->get(Lcom/zui/gallery/app/AbstractGalleryActivity;)Lcom/zui/gallery/app/Config$AlbumSetPage;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mConfig:Lcom/zui/gallery/app/Config$AlbumSetPage;

    .line 781
    new-instance v0, Lcom/zui/gallery/ui/AlbumSetSlotView;

    iget-object v1, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    iget-object v2, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mConfig:Lcom/zui/gallery/app/Config$AlbumSetPage;

    iget-object v2, v2, Lcom/zui/gallery/app/Config$AlbumSetPage;->slotViewSpec:Lcom/zui/gallery/ui/AlbumSetSlotView$Spec;

    invoke-direct {v0, v1, v2}, Lcom/zui/gallery/ui/AlbumSetSlotView;-><init>(Lcom/zui/gallery/app/AbstractGalleryActivity;Lcom/zui/gallery/ui/AlbumSetSlotView$Spec;)V

    iput-object v0, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mSlotView:Lcom/zui/gallery/ui/AlbumSetSlotView;

    .line 784
    new-instance v0, Lcom/zui/gallery/ui/AlbumSetAddSlotRenderer;

    iget-object v4, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    iget-object v5, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    iget-object v6, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mSlotView:Lcom/zui/gallery/ui/AlbumSetSlotView;

    iget-object v1, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mConfig:Lcom/zui/gallery/app/Config$AlbumSetPage;

    iget-object v7, v1, Lcom/zui/gallery/app/Config$AlbumSetPage;->labelSpec:Lcom/zui/gallery/ui/AlbumSetSlotRenderer$LabelSpec;

    iget-object v1, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mConfig:Lcom/zui/gallery/app/Config$AlbumSetPage;

    iget v8, v1, Lcom/zui/gallery/app/Config$AlbumSetPage;->placeholderColor:I

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lcom/zui/gallery/ui/AlbumSetAddSlotRenderer;-><init>(Lcom/zui/gallery/app/AbstractGalleryActivity;Lcom/zui/gallery/ui/SelectionManager;Lcom/zui/gallery/ui/AlbumSetSlotView;Lcom/zui/gallery/ui/AlbumSetSlotRenderer$LabelSpec;I)V

    iput-object v0, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mAlbumSetView:Lcom/zui/gallery/ui/AlbumSetAddSlotRenderer;

    .line 788
    iget-object v1, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mSlotView:Lcom/zui/gallery/ui/AlbumSetSlotView;

    invoke-virtual {v1, v0}, Lcom/zui/gallery/ui/AlbumSetSlotView;->setSlotRenderer(Lcom/zui/gallery/ui/AlbumSetSlotRenderer;)V

    .line 792
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mSlotView:Lcom/zui/gallery/ui/AlbumSetSlotView;

    new-instance v1, Lcom/zui/gallery/app/AlbumSetAddPage$7;

    invoke-direct {v1, p0}, Lcom/zui/gallery/app/AlbumSetAddPage$7;-><init>(Lcom/zui/gallery/app/AlbumSetAddPage;)V

    invoke-virtual {v0, v1}, Lcom/zui/gallery/ui/AlbumSetSlotView;->setListener(Lcom/zui/gallery/ui/AlbumSetSlotView$Listener;)V

    .line 837
    new-instance v0, Lcom/zui/gallery/ui/ActionModeHandler;

    iget-object v1, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    iget-object v2, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    iget-object v3, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getEditTitleBar()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-direct {v0, v1, v2, v3}, Lcom/zui/gallery/ui/ActionModeHandler;-><init>(Lcom/zui/gallery/app/AbstractGalleryActivity;Lcom/zui/gallery/ui/SelectionManager;Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mActionModeHandler:Lcom/zui/gallery/ui/ActionModeHandler;

    .line 838
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mRootPane:Lcom/zui/gallery/ui/GLView;

    iget-object v1, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mSlotView:Lcom/zui/gallery/ui/AlbumSetSlotView;

    invoke-virtual {v0, v1}, Lcom/zui/gallery/ui/GLView;->addComponent(Lcom/zui/gallery/ui/GLView;)V

    return-void
.end method

.method private insertGroupAlbum(IZ)V
    .locals 9

    .line 332
    invoke-virtual {p0}, Lcom/zui/gallery/app/AlbumSetAddPage;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "media-image-paths"

    .line 333
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    const/4 v1, 0x0

    if-eqz v4, :cond_0

    .line 336
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const-string v3, "media-video-paths"

    .line 338
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 341
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    const-string v6, "cloud-item-ids"

    .line 344
    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 347
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    :cond_2
    add-int/2addr v2, v3

    add-int/2addr v2, v1

    const/4 v0, 0x1

    if-lt v2, v0, :cond_3

    .line 351
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 354
    :cond_3
    new-instance v0, Lcom/zui/gallery/app/AlbumSetAddPage$2;

    move-object v2, v0

    move-object v3, p0

    move v6, p1

    move v7, p2

    invoke-direct/range {v2 .. v8}, Lcom/zui/gallery/app/AlbumSetAddPage$2;-><init>(Lcom/zui/gallery/app/AlbumSetAddPage;Ljava/util/ArrayList;Ljava/util/ArrayList;IZLjava/util/ArrayList;)V

    .line 373
    invoke-virtual {v0}, Lcom/zui/gallery/app/AlbumSetAddPage$2;->start()V

    return-void
.end method

.method private onDown(I)V
    .locals 1

    .line 462
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mAlbumSetView:Lcom/zui/gallery/ui/AlbumSetAddSlotRenderer;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/ui/AlbumSetAddSlotRenderer;->setPressedIndex(I)V

    return-void
.end method

.method private onResumeReal()V
    .locals 2

    const/4 v0, 0x1

    .line 739
    iput-boolean v0, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mIsActive:Z

    .line 740
    iget-object v1, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mRootPane:Lcom/zui/gallery/ui/GLView;

    invoke-virtual {p0, v1}, Lcom/zui/gallery/app/AlbumSetAddPage;->setContentPane(Lcom/zui/gallery/ui/GLView;)V

    .line 743
    invoke-direct {p0, v0}, Lcom/zui/gallery/app/AlbumSetAddPage;->setLoadingBit(I)V

    .line 744
    iget-object v1, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mAlbumSetDataAdapter:Lcom/zui/gallery/app/AlbumSetDataLoader;

    invoke-virtual {v1}, Lcom/zui/gallery/app/AlbumSetDataLoader;->resume()V

    .line 746
    iget-object v1, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mAlbumSetView:Lcom/zui/gallery/ui/AlbumSetAddSlotRenderer;

    invoke-virtual {v1}, Lcom/zui/gallery/ui/AlbumSetAddSlotRenderer;->resume()V

    .line 747
    iget-object v1, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mEyePosition:Lcom/zui/gallery/app/EyePosition;

    invoke-virtual {v1}, Lcom/zui/gallery/app/EyePosition;->resume()V

    .line 748
    iget-object v1, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mActionModeHandler:Lcom/zui/gallery/ui/ActionModeHandler;

    invoke-virtual {v1}, Lcom/zui/gallery/ui/ActionModeHandler;->resume()V

    .line 750
    iget-object v1, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v1, v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->setRefreshFolder(Z)V

    .line 751
    iget-boolean v0, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mInitialSynced:Z

    if-nez v0, :cond_0

    const/4 v0, 0x2

    .line 752
    invoke-direct {p0, v0}, Lcom/zui/gallery/app/AlbumSetAddPage;->setLoadingBit(I)V

    .line 753
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mMediaSet:Lcom/zui/gallery/data/MediaSet;

    invoke-virtual {v0, p0}, Lcom/zui/gallery/data/MediaSet;->requestSync(Lcom/zui/gallery/data/MediaSet$SyncListener;)Lcom/zui/gallery/util/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mSyncTask:Lcom/zui/gallery/util/Future;

    :cond_0
    return-void
.end method

.method private onUp(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 468
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mAlbumSetView:Lcom/zui/gallery/ui/AlbumSetAddSlotRenderer;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/zui/gallery/ui/AlbumSetAddSlotRenderer;->setPressedIndex(I)V

    goto :goto_0

    .line 470
    :cond_0
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mAlbumSetView:Lcom/zui/gallery/ui/AlbumSetAddSlotRenderer;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/AlbumSetAddSlotRenderer;->setPressedUp()V

    :goto_0
    return-void
.end method

.method private pickAlbum(I)V
    .locals 8

    .line 377
    iget-boolean v0, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mIsActive:Z

    if-nez v0, :cond_0

    return-void

    .line 379
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mAlbumSetDataAdapter:Lcom/zui/gallery/app/AlbumSetDataLoader;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/app/AlbumSetDataLoader;->getMediaSet(I)Lcom/zui/gallery/data/MediaSet;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 383
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pickAlbum, targetSet = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaSet;->getPath()Lcom/zui/gallery/data/Path;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zui/gallery/data/Path;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AlbumSetAddPage"

    invoke-static {v2, v1}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    iget-boolean v1, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mAdd2GroupAlbum:Z

    const/4 v3, 0x1

    if-eqz v1, :cond_5

    .line 388
    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaSet;->isGroupAlbum()Z

    move-result p1

    const/4 v1, 0x0

    const/high16 v4, 0x1040000

    const v5, 0x7f02000c

    const v6, 0x7f100087

    const-string v7, "/local/camera"

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaSet;->isSystemGroupAlbum()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaSet;->getPath()Lcom/zui/gallery/data/Path;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/gallery/data/Path;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 389
    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaSet;->getPath()Lcom/zui/gallery/data/Path;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/gallery/data/Path;->getSuffix()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 391
    new-instance v0, Lzui/app/ActionDialog$Builder;

    iget-object v2, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    iget-object v3, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-static {v3}, Lcom/zui/gallery/util/GalleryUtils;->getCurrentActionDialogTheme(Landroid/content/Context;)I

    move-result v3

    invoke-direct {v0, v2, v3}, Lzui/app/ActionDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 392
    invoke-virtual {v0, v6}, Lzui/app/ActionDialog$Builder;->setTitle(I)Lzui/app/ActionDialog$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    .line 393
    invoke-virtual {v2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/zui/gallery/app/AlbumSetAddPage$3;

    invoke-direct {v3, p0, p1}, Lcom/zui/gallery/app/AlbumSetAddPage$3;-><init>(Lcom/zui/gallery/app/AlbumSetAddPage;I)V

    invoke-virtual {v0, v2, v3}, Lzui/app/ActionDialog$Builder;->setOptionItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lzui/app/ActionDialog$Builder;

    move-result-object p1

    .line 401
    invoke-virtual {p1, v4, v1}, Lzui/app/ActionDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lzui/app/ActionDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lzui/app/ActionDialog$Builder;->show()Lzui/app/ActionDialog;

    goto :goto_0

    .line 402
    :cond_2
    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaSet;->isGroupFolderAlbum()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaSet;->getPath()Lcom/zui/gallery/data/Path;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/gallery/data/Path;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 403
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/zui/gallery/util/GroupUtils;->getGroupIdByName(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p1

    .line 404
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "group album group id:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-lez p1, :cond_4

    .line 408
    new-instance v0, Lzui/app/ActionDialog$Builder;

    iget-object v2, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    iget-object v3, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-static {v3}, Lcom/zui/gallery/util/GalleryUtils;->getCurrentActionDialogTheme(Landroid/content/Context;)I

    move-result v3

    invoke-direct {v0, v2, v3}, Lzui/app/ActionDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 409
    invoke-virtual {v0, v6}, Lzui/app/ActionDialog$Builder;->setTitle(I)Lzui/app/ActionDialog$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    .line 410
    invoke-virtual {v2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/zui/gallery/app/AlbumSetAddPage$4;

    invoke-direct {v3, p0, p1}, Lcom/zui/gallery/app/AlbumSetAddPage$4;-><init>(Lcom/zui/gallery/app/AlbumSetAddPage;I)V

    invoke-virtual {v0, v2, v3}, Lzui/app/ActionDialog$Builder;->setOptionItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lzui/app/ActionDialog$Builder;

    move-result-object p1

    .line 418
    invoke-virtual {p1, v4, v1}, Lzui/app/ActionDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lzui/app/ActionDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lzui/app/ActionDialog$Builder;->show()Lzui/app/ActionDialog;

    goto :goto_0

    :cond_3
    const-string p1, "is not group album, please choose another!"

    .line 421
    invoke-static {v2, p1}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const v0, 0x7f1001c6

    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_4
    :goto_0
    return-void

    .line 429
    :cond_5
    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaSet;->getTotalMediaItemCount()I

    move-result v1

    if-nez v1, :cond_6

    const-string p1, "pickAlbum, targetSet count = 0, return!"

    .line 430
    invoke-static {v2, p1}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 431
    invoke-direct {p0, p1}, Lcom/zui/gallery/app/AlbumSetAddPage;->showEmptyAlbumToast(I)V

    return-void

    .line 434
    :cond_6
    invoke-direct {p0}, Lcom/zui/gallery/app/AlbumSetAddPage;->hideEmptyAlbumToast()V

    .line 436
    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaSet;->getPath()Lcom/zui/gallery/data/Path;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/gallery/data/Path;->toString()Ljava/lang/String;

    move-result-object v1

    .line 438
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pickAlbum, mediaPath = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    new-instance v4, Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/zui/gallery/app/AlbumSetAddPage;->getData()Landroid/os/Bundle;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    const/4 v5, 0x2

    new-array v5, v5, [I

    .line 442
    invoke-direct {p0, p1, v5}, Lcom/zui/gallery/app/AlbumSetAddPage;->getSlotCenter(I[I)V

    const-string p1, "set-center"

    .line 443
    invoke-virtual {v4, p1, v5}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 444
    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaSet;->getSubMediaSetCount()I

    move-result p1

    const-string v0, "media-path"

    if-lez p1, :cond_7

    .line 445
    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getStateManager()Lcom/zui/gallery/app/StateManager;

    move-result-object p1

    const-class v0, Lcom/zui/gallery/app/AlbumSetAddPage;

    invoke-virtual {p1, v0, v3, v4}, Lcom/zui/gallery/app/StateManager;->startStateForResult(Ljava/lang/Class;ILandroid/os/Bundle;)V

    goto :goto_1

    .line 449
    :cond_7
    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getStateManager()Lcom/zui/gallery/app/StateManager;

    move-result-object p1

    const-class v0, Lcom/zui/gallery/app/AlbumAddPage;

    invoke-virtual {p1, v0}, Lcom/zui/gallery/app/StateManager;->hasStateClass(Ljava/lang/Class;)Z

    move-result p1

    .line 453
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pickAlbum, inAlbum = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    xor-int/2addr p1, v3

    const-string v0, "cluster-menu"

    .line 454
    invoke-virtual {v4, v0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 455
    iget p1, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mAddGroupId:I

    const-string v0, "addGroupId"

    invoke-virtual {v4, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 456
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getStateManager()Lcom/zui/gallery/app/StateManager;

    move-result-object p1

    const-class v0, Lcom/zui/gallery/app/AlbumAddPage;

    invoke-virtual {p1, v0, v3, v4}, Lcom/zui/gallery/app/StateManager;->startStateForResult(Ljava/lang/Class;ILandroid/os/Bundle;)V

    :goto_1
    return-void
.end method

.method public static removeAddPath(Lcom/zui/gallery/data/Path;)V
    .locals 1

    .line 1197
    sget-object v0, Lcom/zui/gallery/app/AlbumSetAddPage;->needAddPathMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 1199
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 1200
    sget-object v0, Lcom/zui/gallery/app/AlbumSetAddPage;->needAddPathMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private setLoadingBit(I)V
    .locals 1

    .line 663
    iget v0, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mLoadingBits:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mLoadingBits:I

    return-void
.end method

.method private showAddGroupDialog()V
    .locals 3

    .line 846
    new-instance v0, Lzui/app/MessageDialog$Builder;

    iget-object v1, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    iget-object v2, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-static {v2}, Lcom/zui/gallery/util/GalleryUtils;->getCurrentMessageDialogTheme(Landroid/content/Context;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lzui/app/MessageDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f100037

    .line 847
    invoke-virtual {v0, v1}, Lzui/app/MessageDialog$Builder;->setTitle(I)Lzui/app/MessageDialog$Builder;

    const/4 v1, 0x2

    .line 848
    invoke-virtual {v0, v1}, Lzui/app/MessageDialog$Builder;->setMessageDialogType(I)Lzui/app/MessageDialog$Builder;

    const v1, 0x7f100042

    .line 849
    invoke-virtual {v0, v1}, Lzui/app/MessageDialog$Builder;->setEditorHint(I)Lzui/app/MessageDialog$Builder;

    .line 851
    iget-object v1, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    .line 852
    invoke-virtual {v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10009d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/zui/gallery/app/AlbumSetAddPage$8;

    invoke-direct {v2, p0}, Lcom/zui/gallery/app/AlbumSetAddPage$8;-><init>(Lcom/zui/gallery/app/AlbumSetAddPage;)V

    .line 851
    invoke-virtual {v0, v1, v2}, Lzui/app/MessageDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lzui/app/MessageDialog$Builder;

    .line 938
    iget-object v1, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    .line 939
    invoke-virtual {v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100068

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/zui/gallery/app/AlbumSetAddPage$9;

    invoke-direct {v2, p0}, Lcom/zui/gallery/app/AlbumSetAddPage$9;-><init>(Lcom/zui/gallery/app/AlbumSetAddPage;)V

    .line 938
    invoke-virtual {v0, v1, v2}, Lzui/app/MessageDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lzui/app/MessageDialog$Builder;

    .line 946
    invoke-virtual {v0}, Lzui/app/MessageDialog$Builder;->show()Lzui/app/MessageDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mCreateFolderDialog:Lzui/app/MessageDialog;

    const/4 v1, 0x0

    .line 947
    invoke-virtual {v0, v1}, Lzui/app/MessageDialog;->setCanceledOnTouchOutside(Z)V

    .line 948
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mCreateFolderDialog:Lzui/app/MessageDialog;

    invoke-virtual {v0}, Lzui/app/MessageDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v2, 0x5

    .line 949
    invoke-virtual {v0, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 950
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mCreateFolderDialog:Lzui/app/MessageDialog;

    invoke-virtual {v0}, Lzui/app/MessageDialog;->getEditor()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 953
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mCreateFolderDialog:Lzui/app/MessageDialog;

    new-instance v2, Lcom/zui/gallery/app/AlbumSetAddPage$10;

    invoke-direct {v2, p0}, Lcom/zui/gallery/app/AlbumSetAddPage$10;-><init>(Lcom/zui/gallery/app/AlbumSetAddPage;)V

    invoke-virtual {v0, v2}, Lzui/app/MessageDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 963
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mCreateFolderDialog:Lzui/app/MessageDialog;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lzui/app/MessageDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 965
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 966
    iget-object v1, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mCreateFolderDialog:Lzui/app/MessageDialog;

    new-instance v2, Lcom/zui/gallery/app/AlbumSetAddPage$11;

    invoke-direct {v2, p0, v0}, Lcom/zui/gallery/app/AlbumSetAddPage$11;-><init>(Lcom/zui/gallery/app/AlbumSetAddPage;Landroid/widget/Button;)V

    invoke-virtual {v1, v2}, Lzui/app/MessageDialog;->setEditorTextWatcher(Landroid/text/TextWatcher;)V

    :cond_0
    return-void
.end method

.method private showEmptyAlbumToast(I)V
    .locals 2

    .line 310
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mEmptyAlbumToast:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 311
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 313
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    .line 317
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const v1, 0x7f10010b

    invoke-static {v0, v1, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 318
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mEmptyAlbumToast:Ljava/lang/ref/WeakReference;

    .line 319
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static togglePhoto(Lcom/zui/gallery/data/Path;Lcom/zui/gallery/data/Path;)V
    .locals 2

    .line 1150
    sget-object v0, Lcom/zui/gallery/app/AlbumSetAddPage;->needAddPathMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-nez v0, :cond_0

    .line 1152
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1153
    sget-object v1, Lcom/zui/gallery/app/AlbumSetAddPage;->needAddPathMap:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1156
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 1157
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1159
    :cond_1
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method private unUpdateViewMargin()V
    .locals 2

    .line 1402
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->isPad()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1403
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const v1, 0x7f060348

    invoke-virtual {v0, v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getDimens(I)I

    move-result v0

    .line 1404
    iget-object v1, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->titleBarRightContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1405
    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 1406
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->titleBarRightContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private updateClickedCount()V
    .locals 0

    return-void
.end method

.method private updateHeadRoot()V
    .locals 5

    .line 1435
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->isLandScreen()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 1440
    :try_start_0
    iget-object v1, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getHeadRoot()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1442
    invoke-virtual {v1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 1446
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateHeadRoot ex == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AlbumSetAddPage"

    invoke-static {v2, v1}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move v1, v0

    :goto_0
    if-nez v1, :cond_2

    const/4 v0, 0x1

    .line 1450
    :cond_2
    iget-object v2, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0603a8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    .line 1451
    iget-object v3, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f06004f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    .line 1452
    iget-object v4, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getHeadRoot()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    float-to-int v3, v3

    add-int/2addr v2, v3

    if-eqz v0, :cond_3

    .line 1453
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getStatusBarHeight()I

    move-result v1

    :cond_3
    add-int/2addr v2, v1

    iput v2, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1454
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getHeadRoot()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1455
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getTitleBar()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1456
    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1457
    iget-object v1, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getTitleBar()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateTitleBar()V
    .locals 6

    .line 1340
    invoke-direct {p0}, Lcom/zui/gallery/app/AlbumSetAddPage;->updateViewMargin()V

    .line 1341
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->settingView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1342
    iget-boolean v0, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mAdd2GroupAlbum:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 1343
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->addFolderImageView:Landroid/widget/ImageView;

    const v3, 0x7f070078

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1344
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->addFolderImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1345
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->titleBarLeftContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1346
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->titleView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->addGroupStr:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1347
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->subTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1348
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->rightSelectImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1349
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->rightTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1350
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->rightTextView:Landroid/widget/TextView;

    const v1, 0x7f100068

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1352
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->addFolderImageView:Landroid/widget/ImageView;

    new-instance v1, Lcom/zui/gallery/app/AlbumSetAddPage$14;

    invoke-direct {v1, p0}, Lcom/zui/gallery/app/AlbumSetAddPage$14;-><init>(Lcom/zui/gallery/app/AlbumSetAddPage;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1358
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->leftIcon:Landroid/widget/ImageView;

    const v1, 0x7f07005a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1359
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->leftIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1360
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->titleBarLeftContainer:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/zui/gallery/app/AlbumSetAddPage$15;

    invoke-direct {v1, p0}, Lcom/zui/gallery/app/AlbumSetAddPage$15;-><init>(Lcom/zui/gallery/app/AlbumSetAddPage;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 1367
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->titleBarLeftContainer:Landroid/widget/LinearLayout;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1368
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->addFolderImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1369
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->rightSelectImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1370
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->leftIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1371
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const v1, 0x7f100031

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mTitle:Ljava/lang/String;

    aput-object v5, v4, v2

    invoke-virtual {v0, v1, v4}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1372
    iget-object v1, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->titleView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1374
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->titleView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1376
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->rightTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1377
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->rightTextView:Landroid/widget/TextView;

    const v1, 0x7f1000e8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1378
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->titleBarRightContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1379
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->titleBarRightContainer:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/zui/gallery/app/AlbumSetAddPage$16;

    invoke-direct {v1, p0}, Lcom/zui/gallery/app/AlbumSetAddPage$16;-><init>(Lcom/zui/gallery/app/AlbumSetAddPage;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1388
    :goto_0
    invoke-virtual {p0}, Lcom/zui/gallery/app/AlbumSetAddPage;->updateTitleBarVisibility()V

    return-void
.end method

.method private updateViewMargin()V
    .locals 8

    .line 1392
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->isPad()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1393
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const v1, 0x7f06005d

    invoke-virtual {v0, v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getDimens(I)I

    move-result v0

    .line 1394
    iget-object v1, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->titleBarRightContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1395
    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 1396
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->titleBarRightContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1398
    :cond_0
    iget-object v2, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    iget-object v3, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->titleView:Landroid/widget/TextView;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/zui/gallery/util/GalleryUtils;->setViewMargin(Landroid/content/Context;Landroid/view/View;IIII)V

    return-void
.end method


# virtual methods
.method public freeResources()V
    .locals 0

    return-void
.end method

.method protected getBackgroundColorId(Landroid/os/Bundle;)I
    .locals 0

    const p1, 0x7f0500b3

    return p1
.end method

.method public onBackPressed()V
    .locals 1

    .line 264
    instance-of v0, p0, Lcom/zui/gallery/app/AlbumSetAddMorePage;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 267
    :cond_0
    invoke-static {}, Lcom/zui/gallery/app/AlbumSetAddPage;->clearClicked()V

    .line 269
    :goto_0
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 270
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/SelectionManager;->leaveSelectionMode()V

    goto :goto_1

    .line 272
    :cond_1
    invoke-super {p0}, Lcom/zui/gallery/app/ActivityState;->onBackPressed()V

    :goto_1
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 613
    invoke-super {p0, p1}, Lcom/zui/gallery/app/ActivityState;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 614
    invoke-direct {p0}, Lcom/zui/gallery/app/AlbumSetAddPage;->initTitleBar()V

    .line 616
    invoke-direct {p0}, Lcom/zui/gallery/app/AlbumSetAddPage;->updateTitleBar()V

    .line 619
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-static {p1}, Lcom/zui/gallery/app/Config$AlbumSetPage;->get(Lcom/zui/gallery/app/AbstractGalleryActivity;)Lcom/zui/gallery/app/Config$AlbumSetPage;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mConfig:Lcom/zui/gallery/app/Config$AlbumSetPage;

    .line 620
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mSlotView:Lcom/zui/gallery/ui/AlbumSetSlotView;

    iget-object p1, p1, Lcom/zui/gallery/app/Config$AlbumSetPage;->slotViewSpec:Lcom/zui/gallery/ui/AlbumSetSlotView$Spec;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/ui/AlbumSetSlotView;->setSlotSpec(Lcom/zui/gallery/ui/AlbumSetSlotView$Spec;)V

    .line 622
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mAlbumSetView:Lcom/zui/gallery/ui/AlbumSetAddSlotRenderer;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/AlbumSetAddSlotRenderer;->onConfigChanged()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 3

    .line 497
    invoke-super {p0, p1, p2}, Lcom/zui/gallery/app/ActivityState;->onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 498
    invoke-direct {p0}, Lcom/zui/gallery/app/AlbumSetAddPage;->initializeViews()V

    .line 499
    invoke-direct {p0, p1}, Lcom/zui/gallery/app/AlbumSetAddPage;->initializeData(Landroid/os/Bundle;)V

    .line 500
    iget-object p2, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "get-group-album"

    const/4 v1, 0x0

    .line 502
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mAdd2GroupAlbum:Z

    .line 503
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add2GroupAlbum = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mAdd2GroupAlbum:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AlbumSetAddPage"

    invoke-static {v2, v0}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mSlotView:Lcom/zui/gallery/ui/AlbumSetSlotView;

    iget-boolean v2, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mAdd2GroupAlbum:Z

    invoke-virtual {v0, v2}, Lcom/zui/gallery/ui/AlbumSetSlotView;->setShowAddItem(Z)V

    const-string v0, "set-title"

    .line 506
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mTitle:Ljava/lang/String;

    .line 507
    new-instance v0, Lcom/zui/gallery/app/EyePosition;

    invoke-direct {v0, p2, p0}, Lcom/zui/gallery/app/EyePosition;-><init>(Landroid/content/Context;Lcom/zui/gallery/app/EyePosition$EyePositionListener;)V

    iput-object v0, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mEyePosition:Lcom/zui/gallery/app/EyePosition;

    .line 508
    iget-object p2, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getGalleryActionBar()Lcom/zui/gallery/app/GalleryActionBar;

    move-result-object p2

    iput-object p2, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mActionBar:Lcom/zui/gallery/app/GalleryActionBar;

    .line 509
    sget-object p2, Lcom/zui/gallery/app/AlbumSetAddPage;->ADD_TO_GROUP_SUBTITLE:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->addGroupStr:Ljava/lang/String;

    .line 511
    sget-object p2, Lcom/zui/gallery/app/AlbumSetAddPage;->IS_ALBUMPAGE_CALL:Ljava/lang/String;

    invoke-virtual {p1, p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->isAlbumpageCall:Z

    .line 512
    sget-object p2, Lcom/zui/gallery/app/AlbumSetAddPage;->IS_LOCAL_TIME_ALBUM_PAGE_CALL:Ljava/lang/String;

    invoke-virtual {p1, p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->isLocalTimeAlbumpageCall:Z

    .line 514
    invoke-direct {p0}, Lcom/zui/gallery/app/AlbumSetAddPage;->initTitleBar()V

    .line 516
    new-instance p1, Lcom/zui/gallery/app/AlbumSetAddPage$6;

    iget-object p2, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getGLRoot()Lcom/zui/gallery/ui/GLRoot;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/zui/gallery/app/AlbumSetAddPage$6;-><init>(Lcom/zui/gallery/app/AlbumSetAddPage;Lcom/zui/gallery/ui/GLRoot;)V

    iput-object p1, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method protected onCreateActionBar(Landroid/view/Menu;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onDestroy()V
    .locals 2

    .line 596
    invoke-super {p0}, Lcom/zui/gallery/app/ActivityState;->onDestroy()V

    .line 597
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mActionModeHandler:Lcom/zui/gallery/ui/ActionModeHandler;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/ActionModeHandler;->destroy()V

    .line 598
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mAlbumSetView:Lcom/zui/gallery/ui/AlbumSetAddSlotRenderer;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/AlbumSetAddSlotRenderer;->destory()V

    .line 599
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mCreateFolderDialog:Lzui/app/MessageDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lzui/app/MessageDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 600
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mCreateFolderDialog:Lzui/app/MessageDialog;

    invoke-virtual {v0}, Lzui/app/MessageDialog;->dismiss()V

    const/4 v0, 0x0

    .line 601
    iput-object v0, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mCreateFolderDialog:Lzui/app/MessageDialog;

    .line 604
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->titleView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 605
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 607
    :cond_1
    invoke-direct {p0}, Lcom/zui/gallery/app/AlbumSetAddPage;->unUpdateViewMargin()V

    return-void
.end method

.method public onEyePositionChanged(FFF)V
    .locals 1

    .line 254
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mRootPane:Lcom/zui/gallery/ui/GLView;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/GLView;->lockRendering()V

    .line 255
    iput p1, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mX:F

    .line 256
    iput p2, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mY:F

    .line 257
    iput p3, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mZ:F

    .line 258
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mRootPane:Lcom/zui/gallery/ui/GLView;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/GLView;->unlockRendering()V

    .line 259
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mRootPane:Lcom/zui/gallery/ui/GLView;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/GLView;->invalidate()V

    return-void
.end method

.method protected onItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 1017
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    .line 1018
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x102002c

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onLongTap(ILandroid/graphics/Rect;)V
    .locals 1

    .line 475
    iget-boolean p2, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mAdd2GroupAlbum:Z

    if-eqz p2, :cond_0

    return-void

    .line 477
    :cond_0
    iget-object p2, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mAlbumSetDataAdapter:Lcom/zui/gallery/app/AlbumSetDataLoader;

    invoke-virtual {p2, p1}, Lcom/zui/gallery/app/AlbumSetDataLoader;->getMediaSet(I)Lcom/zui/gallery/data/MediaSet;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 480
    :cond_1
    iget-object p2, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/zui/gallery/ui/SelectionManager;->setAutoLeaveSelectionMode(Z)V

    .line 481
    iget-object p2, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {p1}, Lcom/zui/gallery/data/MediaSet;->getPath()Lcom/zui/gallery/data/Path;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/zui/gallery/ui/SelectionManager;->toggle(Lcom/zui/gallery/data/Path;)V

    .line 482
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mSlotView:Lcom/zui/gallery/ui/AlbumSetSlotView;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/AlbumSetSlotView;->invalidate()V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 668
    invoke-super {p0}, Lcom/zui/gallery/app/ActivityState;->onPause()V

    const-string v0, "AlbumSetAddPage"

    const-string v1, "onPause"

    .line 669
    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 670
    iput-boolean v0, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mIsActive:Z

    .line 671
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mAlbumSetDataAdapter:Lcom/zui/gallery/app/AlbumSetDataLoader;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AlbumSetDataLoader;->pause()V

    .line 673
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mAlbumSetView:Lcom/zui/gallery/ui/AlbumSetAddSlotRenderer;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/AlbumSetAddSlotRenderer;->pause()V

    .line 675
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mActionModeHandler:Lcom/zui/gallery/ui/ActionModeHandler;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/ActionModeHandler;->pause()V

    .line 676
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mEyePosition:Lcom/zui/gallery/app/EyePosition;

    invoke-virtual {v0}, Lcom/zui/gallery/app/EyePosition;->pause()V

    .line 680
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mSyncTask:Lcom/zui/gallery/util/Future;

    if-eqz v0, :cond_0

    .line 681
    invoke-interface {v0}, Lcom/zui/gallery/util/Future;->cancel()V

    const/4 v0, 0x0

    .line 682
    iput-object v0, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mSyncTask:Lcom/zui/gallery/util/Future;

    const/4 v0, 0x2

    .line 683
    invoke-direct {p0, v0}, Lcom/zui/gallery/app/AlbumSetAddPage;->clearLoadingBit(I)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4

    .line 698
    invoke-super {p0}, Lcom/zui/gallery/app/ActivityState;->onResume()V

    const-string v0, "AlbumSetAddPage"

    const-string v1, "onResume"

    .line 700
    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    invoke-static {}, Landroid/util/LogDebug;->Inst()Landroid/util/LogDebug;

    move-result-object v1

    const-string v2, "GallerySpeedSwitch"

    const-string v3, "+"

    invoke-virtual {v1, v2, v3}, Landroid/util/LogDebug;->resetTimer(Ljava/lang/String;Ljava/lang/String;)V

    .line 705
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mNeedGroupAlbumSync = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/zui/gallery/app/AlbumSetAddPage;->mNeedGroupAlbumSync:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    sget-boolean v0, Lcom/zui/gallery/app/AlbumSetAddPage;->mNeedGroupAlbumSync:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 712
    :cond_0
    invoke-direct {p0}, Lcom/zui/gallery/app/AlbumSetAddPage;->onResumeReal()V

    .line 718
    :goto_0
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->showTab(Z)V

    .line 720
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    sget-object v1, Lcom/zui/gallery/app/TabManager$TabIndex;->TAB_ALBUM:Lcom/zui/gallery/app/TabManager$TabIndex;

    invoke-virtual {v0, v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->updateTabIndex(Lcom/zui/gallery/app/TabManager$TabIndex;)V

    .line 722
    invoke-direct {p0}, Lcom/zui/gallery/app/AlbumSetAddPage;->updateClickedCount()V

    .line 723
    invoke-direct {p0}, Lcom/zui/gallery/app/AlbumSetAddPage;->updateTitleBar()V

    .line 724
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-static {v0}, Lcom/zui/gallery/app/Config$AlbumSetPage;->get(Lcom/zui/gallery/app/AbstractGalleryActivity;)Lcom/zui/gallery/app/Config$AlbumSetPage;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mConfig:Lcom/zui/gallery/app/Config$AlbumSetPage;

    .line 725
    iget-object v1, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mSlotView:Lcom/zui/gallery/ui/AlbumSetSlotView;

    iget-object v0, v0, Lcom/zui/gallery/app/Config$AlbumSetPage;->slotViewSpec:Lcom/zui/gallery/ui/AlbumSetSlotView$Spec;

    invoke-virtual {v1, v0}, Lcom/zui/gallery/ui/AlbumSetSlotView;->setSlotSpec(Lcom/zui/gallery/ui/AlbumSetSlotView$Spec;)V

    .line 727
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mAlbumSetView:Lcom/zui/gallery/ui/AlbumSetAddSlotRenderer;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/AlbumSetAddSlotRenderer;->onConfigChanged()V

    .line 728
    invoke-static {}, Landroid/util/LogDebug;->Inst()Landroid/util/LogDebug;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v2, v1}, Landroid/util/LogDebug;->resetTimer(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSelectionChange(Lcom/zui/gallery/data/Path;Z)V
    .locals 2

    .line 1072
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mActionModeHandler:Lcom/zui/gallery/ui/ActionModeHandler;

    invoke-direct {p0}, Lcom/zui/gallery/app/AlbumSetAddPage;->getSelectedString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zui/gallery/ui/ActionModeHandler;->setTitle(Ljava/lang/String;)V

    .line 1073
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mActionModeHandler:Lcom/zui/gallery/ui/ActionModeHandler;

    invoke-virtual {v0, p1, p2}, Lcom/zui/gallery/ui/ActionModeHandler;->updateSupportedOperation(Lcom/zui/gallery/data/Path;Z)V

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

    .line 1063
    :cond_0
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mActionModeHandler:Lcom/zui/gallery/ui/ActionModeHandler;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/ActionModeHandler;->updateSupportedOperation()V

    .line 1064
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mRootPane:Lcom/zui/gallery/ui/GLView;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/GLView;->invalidate()V

    goto :goto_0

    .line 1058
    :cond_1
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mActionModeHandler:Lcom/zui/gallery/ui/ActionModeHandler;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/ActionModeHandler;->finishActionMode()V

    .line 1059
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mRootPane:Lcom/zui/gallery/ui/GLView;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/GLView;->invalidate()V

    goto :goto_0

    .line 1053
    :cond_2
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mActionModeHandler:Lcom/zui/gallery/ui/ActionModeHandler;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/ActionModeHandler;->startActionMode()V

    const/4 p1, 0x0

    .line 1054
    invoke-virtual {p0, p1}, Lcom/zui/gallery/app/AlbumSetAddPage;->performHapticFeedback(I)V

    :goto_0
    return-void
.end method

.method public onSingleTapUp(I)V
    .locals 3

    .line 287
    iget-boolean v0, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mIsActive:Z

    if-nez v0, :cond_0

    return-void

    .line 290
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 291
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mAlbumSetDataAdapter:Lcom/zui/gallery/app/AlbumSetDataLoader;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/app/AlbumSetDataLoader;->getMediaSet(I)Lcom/zui/gallery/data/MediaSet;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 294
    :cond_1
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {p1}, Lcom/zui/gallery/data/MediaSet;->getPath()Lcom/zui/gallery/data/Path;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/zui/gallery/ui/SelectionManager;->toggle(Lcom/zui/gallery/data/Path;)V

    .line 295
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mSlotView:Lcom/zui/gallery/ui/AlbumSetSlotView;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/AlbumSetSlotView;->invalidate()V

    goto :goto_0

    .line 298
    :cond_2
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mAlbumSetView:Lcom/zui/gallery/ui/AlbumSetAddSlotRenderer;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/ui/AlbumSetAddSlotRenderer;->setPressedIndex(I)V

    .line 299
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mAlbumSetView:Lcom/zui/gallery/ui/AlbumSetAddSlotRenderer;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/AlbumSetAddSlotRenderer;->setPressedUp()V

    .line 300
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v1, 0x50

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_0
    return-void
.end method

.method protected onStateResult(IILandroid/content/Intent;)V
    .locals 0

    if-eqz p3, :cond_0

    const-string p1, "empty-album"

    const/4 p2, 0x0

    .line 1029
    invoke-virtual {p3, p1, p2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1030
    invoke-direct {p0, p2}, Lcom/zui/gallery/app/AlbumSetAddPage;->showEmptyAlbumToast(I)V

    :cond_0
    return-void
.end method

.method public onSyncDone(Lcom/zui/gallery/data/MediaSet;I)V
    .locals 2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 1079
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

    const-string v0, "AlbumSetAddPage"

    invoke-static {v0, p1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    :cond_0
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    new-instance v0, Lcom/zui/gallery/app/AlbumSetAddPage$12;

    invoke-direct {v0, p0, p2}, Lcom/zui/gallery/app/AlbumSetAddPage$12;-><init>(Lcom/zui/gallery/app/AlbumSetAddPage;I)V

    invoke-virtual {p1, v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected updateTitleBarVisibility()V
    .locals 6

    .line 1412
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getHeadRoot()Landroid/view/View;

    move-result-object v0

    .line 1413
    iget-object v1, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getTitleBar()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f08036d

    .line 1414
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1415
    iget-object v2, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getActivityOrientation()I

    move-result v2

    iget-object v3, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getConfiguration()Landroid/content/res/Configuration;

    const/4 v3, 0x0

    const v4, 0x7f0501dc

    const/4 v5, 0x2

    if-ne v2, v5, :cond_1

    .line 1416
    iget-boolean v2, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->isLocalTimeAlbumpageCall:Z

    if-eqz v2, :cond_0

    .line 1417
    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 1419
    :cond_0
    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1422
    :goto_0
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetAddPage;->titleBarRightContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto :goto_1

    .line 1424
    :cond_1
    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_1
    const v0, 0x7f080370

    .line 1429
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 1430
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1431
    invoke-direct {p0}, Lcom/zui/gallery/app/AlbumSetAddPage;->updateHeadRoot()V

    return-void
.end method
