.class public Lcom/zui/gallery/app/AlbumPage;
.super Lcom/zui/gallery/app/ActivityState;
.source "AlbumPage.java"

# interfaces
.implements Lcom/zui/gallery/ui/SelectionManager$SelectionListener;
.implements Lcom/zui/gallery/data/MediaSet$SyncListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/app/AlbumPage$DeleteProgressListener;,
        Lcom/zui/gallery/app/AlbumPage$MyDetailsSource;,
        Lcom/zui/gallery/app/AlbumPage$MyLoadingListener;
    }
.end annotation


# static fields
.field private static final BIT_LOADING_RELOAD:I = 0x1

.field private static final BIT_LOADING_SYNC:I = 0x2

.field public static DOWNLOAD_PIC_TYPE:Ljava/lang/String; = "application/octet-stream"

.field public static final KEY_AUTO_SELECT_ALL:Ljava/lang/String; = "auto-select-all"

.field public static final KEY_EMPTY_ALBUM:Ljava/lang/String; = "empty-album"

.field public static final KEY_MEDIA_PATH:Ljava/lang/String; = "media-path"

.field public static final KEY_PARENT_MEDIA_PATH:Ljava/lang/String; = "parent-media-path"

.field public static final KEY_RESUME_ANIMATION:Ljava/lang/String; = "resume_animation"

.field public static final KEY_SET_CENTER:Ljava/lang/String; = "set-center"

.field private static final MSG_DELETE_COMPLETE:I = 0x3

.field private static final MSG_LEAVE_SELECT_MODE:I = 0x1

.field private static final MSG_PICK_PHOTO:I = 0x0

.field private static final MSG_REMOVE_COMPLETE:I = 0x2

.field private static final REQUEST_DO_ANIMATION:I = 0x3

.field private static final REQUEST_EDIT:I = 0x4

.field public static final REQUEST_PHOTO:I = 0x2

.field private static final REQUEST_SLIDESHOW:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AlbumPage"

.field private static final USER_DISTANCE_METER:F = 0.3f


# instance fields
.field private final CLICKBOTTOMBARICONINTERVAL:I

.field private animation:Landroid/view/animation/Animation;

.field private getContentBottomConatiner:Landroid/widget/LinearLayout;

.field private getContentTextView:Landroid/widget/TextView;

.field private isSecurityLauncher:Z

.field private lastBottomBarClickedTime:J

.field private leftBackUpImageView:Landroid/widget/ImageView;

.field private leftTextView:Landroid/widget/TextView;

.field private listner:Lcom/zui/gallery/privacygroup/KeyStoreUtil$OnPrivacyListner;

.field private longTapItem:Lcom/zui/gallery/data/MediaItem;

.field private longTapItemAbslateRect:Landroid/graphics/Rect;

.field private mActionModeHandler:Lcom/zui/gallery/ui/ActionModeHandler;

.field private mAlbumDataAdapter:Lcom/zui/gallery/app/AlbumDataLoader;

.field private mAlbumView:Lcom/zui/gallery/ui/AlbumSlotRenderer;

.field private mCurrentPhoto:Lcom/zui/gallery/data/MediaItem;

.field private mFloatDialog:Lzui/app/FloatDialog;

.field private mFocusIndex:I

.field private mGetContent:Z

.field private mHandler:Landroid/os/Handler;

.field private mInCameraApp:Z

.field private mInitialSynced:Z

.field private mIsActive:Z

.field private mLaunchedFromPhotoPage:Z

.field private mListener:Lcom/zui/sdk/service/patpat/ZuiPatpatService$PatpatListener;

.field private mLoadingBits:I

.field private mLoadingFailed:Z

.field private mMediaSet:Lcom/zui/gallery/data/MediaSet;

.field private mMediaSetPath:Lcom/zui/gallery/data/Path;

.field private mOpenCenter:Lcom/zui/gallery/ui/RelativePosition;

.field private mParentMediaSetString:Ljava/lang/String;

.field private mPositionProvider:Lcom/zui/gallery/ui/PhotoFallbackEffect$PositionProvider;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mProgressDialogX:Lzui/app/ProgressDialogX;

.field private mResumeEffect:Lcom/zui/gallery/ui/PhotoFallbackEffect;

.field private final mRootPane:Lcom/zui/gallery/ui/GLView;

.field protected mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

.field private mShowDetails:Z

.field private mShowedEmptyToastForSelf:Z

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

.field private mTypeBits:I

.field private mUserDistance:F

.field private mZuiPatpatService:Lcom/zui/sdk/service/patpat/ZuiPatpatService;

.field private rightNewFolderImageView:Landroid/widget/ImageView;

.field private rightSelectImageView:Landroid/widget/ImageView;

.field private rightTextView:Landroid/widget/TextView;

.field private settingView:Landroid/view/View;

.field private subTitleTextView:Landroid/widget/TextView;

.field private titleBarLeftContainer:Landroid/widget/LinearLayout;

.field private titleBarRightContainer:Landroid/widget/LinearLayout;

.field private titleTextView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 128
    invoke-direct {p0}, Lcom/zui/gallery/app/ActivityState;-><init>()V

    const/4 v0, 0x0

    .line 148
    iput-boolean v0, p0, Lcom/zui/gallery/app/AlbumPage;->mIsActive:Z

    .line 160
    iput v0, p0, Lcom/zui/gallery/app/AlbumPage;->mFocusIndex:I

    const/4 v1, 0x0

    .line 164
    iput-object v1, p0, Lcom/zui/gallery/app/AlbumPage;->mSyncTask:Lcom/zui/gallery/util/Future;

    .line 168
    iput v0, p0, Lcom/zui/gallery/app/AlbumPage;->mLoadingBits:I

    .line 169
    iput-boolean v0, p0, Lcom/zui/gallery/app/AlbumPage;->mInitialSynced:Z

    .line 172
    new-instance v1, Lcom/zui/gallery/ui/RelativePosition;

    invoke-direct {v1}, Lcom/zui/gallery/ui/RelativePosition;-><init>()V

    iput-object v1, p0, Lcom/zui/gallery/app/AlbumPage;->mOpenCenter:Lcom/zui/gallery/ui/RelativePosition;

    .line 184
    iput-boolean v0, p0, Lcom/zui/gallery/app/AlbumPage;->mShowedEmptyToastForSelf:Z

    const/16 v1, 0x2bc

    .line 202
    iput v1, p0, Lcom/zui/gallery/app/AlbumPage;->CLICKBOTTOMBARICONINTERVAL:I

    .line 213
    iput-boolean v0, p0, Lcom/zui/gallery/app/AlbumPage;->isSecurityLauncher:Z

    .line 214
    new-instance v0, Lcom/zui/gallery/app/AlbumPage$1;

    invoke-direct {v0, p0}, Lcom/zui/gallery/app/AlbumPage$1;-><init>(Lcom/zui/gallery/app/AlbumPage;)V

    iput-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->mPositionProvider:Lcom/zui/gallery/ui/PhotoFallbackEffect$PositionProvider;

    .line 239
    new-instance v0, Lcom/zui/gallery/app/-$$Lambda$AlbumPage$tltgGSHjxbrtDrhIhDYPpPJVnZo;

    invoke-direct {v0, p0}, Lcom/zui/gallery/app/-$$Lambda$AlbumPage$tltgGSHjxbrtDrhIhDYPpPJVnZo;-><init>(Lcom/zui/gallery/app/AlbumPage;)V

    iput-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->mListener:Lcom/zui/sdk/service/patpat/ZuiPatpatService$PatpatListener;

    .line 251
    new-instance v0, Lcom/zui/gallery/app/AlbumPage$2;

    invoke-direct {v0, p0}, Lcom/zui/gallery/app/AlbumPage$2;-><init>(Lcom/zui/gallery/app/AlbumPage;)V

    iput-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->mRootPane:Lcom/zui/gallery/ui/GLView;

    .line 1532
    new-instance v0, Lcom/zui/gallery/app/AlbumPage$9;

    invoke-direct {v0, p0}, Lcom/zui/gallery/app/AlbumPage$9;-><init>(Lcom/zui/gallery/app/AlbumPage;)V

    iput-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->listner:Lcom/zui/gallery/privacygroup/KeyStoreUtil$OnPrivacyListner;

    return-void
.end method

.method static synthetic access$000(Lcom/zui/gallery/app/AlbumPage;)Lcom/zui/gallery/ui/SlotView;
    .locals 0

    .line 128
    iget-object p0, p0, Lcom/zui/gallery/app/AlbumPage;->mSlotView:Lcom/zui/gallery/ui/SlotView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/zui/gallery/app/AlbumPage;)Lcom/zui/gallery/app/AlbumDataLoader;
    .locals 0

    .line 128
    iget-object p0, p0, Lcom/zui/gallery/app/AlbumPage;->mAlbumDataAdapter:Lcom/zui/gallery/app/AlbumDataLoader;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/zui/gallery/app/AlbumPage;Z)V
    .locals 0

    .line 128
    invoke-direct {p0, p1}, Lcom/zui/gallery/app/AlbumPage;->onUp(Z)V

    return-void
.end method

.method static synthetic access$1100(Lcom/zui/gallery/app/AlbumPage;II)V
    .locals 0

    .line 128
    invoke-direct {p0, p1, p2}, Lcom/zui/gallery/app/AlbumPage;->onSingleTapUp(II)V

    return-void
.end method

.method static synthetic access$1302(Lcom/zui/gallery/app/AlbumPage;I)I
    .locals 0

    .line 128
    iput p1, p0, Lcom/zui/gallery/app/AlbumPage;->mSyncResult:I

    return p1
.end method

.method static synthetic access$1402(Lcom/zui/gallery/app/AlbumPage;Z)Z
    .locals 0

    .line 128
    iput-boolean p1, p0, Lcom/zui/gallery/app/AlbumPage;->mInitialSynced:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/zui/gallery/app/AlbumPage;I)V
    .locals 0

    .line 128
    invoke-direct {p0, p1}, Lcom/zui/gallery/app/AlbumPage;->clearLoadingBit(I)V

    return-void
.end method

.method static synthetic access$1600(Lcom/zui/gallery/app/AlbumPage;)Z
    .locals 0

    .line 128
    iget-boolean p0, p0, Lcom/zui/gallery/app/AlbumPage;->mLoadingFailed:Z

    return p0
.end method

.method static synthetic access$1602(Lcom/zui/gallery/app/AlbumPage;Z)Z
    .locals 0

    .line 128
    iput-boolean p1, p0, Lcom/zui/gallery/app/AlbumPage;->mLoadingFailed:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/zui/gallery/app/AlbumPage;Z)V
    .locals 0

    .line 128
    invoke-direct {p0, p1}, Lcom/zui/gallery/app/AlbumPage;->showSyncErrorIfNecessary(Z)V

    return-void
.end method

.method static synthetic access$1800(Lcom/zui/gallery/app/AlbumPage;I)V
    .locals 0

    .line 128
    invoke-direct {p0, p1}, Lcom/zui/gallery/app/AlbumPage;->setLoadingBit(I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/zui/gallery/app/AlbumPage;)Landroid/os/Handler;
    .locals 0

    .line 128
    iget-object p0, p0, Lcom/zui/gallery/app/AlbumPage;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/zui/gallery/app/AlbumPage;)Z
    .locals 0

    .line 128
    iget-boolean p0, p0, Lcom/zui/gallery/app/AlbumPage;->mShowDetails:Z

    return p0
.end method

.method static synthetic access$2000(Lcom/zui/gallery/app/AlbumPage;)Lcom/zui/gallery/data/MediaSet;
    .locals 0

    .line 128
    iget-object p0, p0, Lcom/zui/gallery/app/AlbumPage;->mMediaSet:Lcom/zui/gallery/data/MediaSet;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/zui/gallery/app/AlbumPage;)Lcom/zui/gallery/privacygroup/KeyStoreUtil$OnPrivacyListner;
    .locals 0

    .line 128
    iget-object p0, p0, Lcom/zui/gallery/app/AlbumPage;->listner:Lcom/zui/gallery/privacygroup/KeyStoreUtil$OnPrivacyListner;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/zui/gallery/app/AlbumPage;)Lcom/zui/gallery/data/MediaItem;
    .locals 0

    .line 128
    iget-object p0, p0, Lcom/zui/gallery/app/AlbumPage;->mCurrentPhoto:Lcom/zui/gallery/data/MediaItem;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/zui/gallery/app/AlbumPage;)V
    .locals 0

    .line 128
    invoke-direct {p0}, Lcom/zui/gallery/app/AlbumPage;->addPhoto()V

    return-void
.end method

.method static synthetic access$2400(Lcom/zui/gallery/app/AlbumPage;)V
    .locals 0

    .line 128
    invoke-direct {p0}, Lcom/zui/gallery/app/AlbumPage;->enterSelectionMode()V

    return-void
.end method

.method static synthetic access$2500(Lcom/zui/gallery/app/AlbumPage;)V
    .locals 0

    .line 128
    invoke-direct {p0}, Lcom/zui/gallery/app/AlbumPage;->removeGetContenBottomView()V

    return-void
.end method

.method static synthetic access$2600(Lcom/zui/gallery/app/AlbumPage;)Z
    .locals 0

    .line 128
    iget-boolean p0, p0, Lcom/zui/gallery/app/AlbumPage;->mGetContent:Z

    return p0
.end method

.method static synthetic access$2700(Lcom/zui/gallery/app/AlbumPage;)I
    .locals 0

    .line 128
    iget p0, p0, Lcom/zui/gallery/app/AlbumPage;->mTypeBits:I

    return p0
.end method

.method static synthetic access$2800(Lcom/zui/gallery/app/AlbumPage;)Lcom/zui/gallery/ui/ActionModeHandler;
    .locals 0

    .line 128
    iget-object p0, p0, Lcom/zui/gallery/app/AlbumPage;->mActionModeHandler:Lcom/zui/gallery/ui/ActionModeHandler;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/zui/gallery/app/AlbumPage;)Lcom/zui/gallery/data/MediaItem;
    .locals 0

    .line 128
    iget-object p0, p0, Lcom/zui/gallery/app/AlbumPage;->longTapItem:Lcom/zui/gallery/data/MediaItem;

    return-object p0
.end method

.method static synthetic access$2902(Lcom/zui/gallery/app/AlbumPage;Lcom/zui/gallery/data/MediaItem;)Lcom/zui/gallery/data/MediaItem;
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/zui/gallery/app/AlbumPage;->longTapItem:Lcom/zui/gallery/data/MediaItem;

    return-object p1
.end method

.method static synthetic access$300(Lcom/zui/gallery/app/AlbumPage;)Lcom/zui/gallery/ui/AlbumSlotRenderer;
    .locals 0

    .line 128
    iget-object p0, p0, Lcom/zui/gallery/app/AlbumPage;->mAlbumView:Lcom/zui/gallery/ui/AlbumSlotRenderer;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/zui/gallery/app/AlbumPage;)V
    .locals 0

    .line 128
    invoke-direct {p0}, Lcom/zui/gallery/app/AlbumPage;->launchPhotoEditor()V

    return-void
.end method

.method static synthetic access$400(Lcom/zui/gallery/app/AlbumPage;)Lcom/zui/gallery/ui/RelativePosition;
    .locals 0

    .line 128
    iget-object p0, p0, Lcom/zui/gallery/app/AlbumPage;->mOpenCenter:Lcom/zui/gallery/ui/RelativePosition;

    return-object p0
.end method

.method static synthetic access$500(Lcom/zui/gallery/app/AlbumPage;)F
    .locals 0

    .line 128
    iget p0, p0, Lcom/zui/gallery/app/AlbumPage;->mUserDistance:F

    return p0
.end method

.method static synthetic access$600(Lcom/zui/gallery/app/AlbumPage;)Lcom/zui/gallery/ui/PhotoFallbackEffect;
    .locals 0

    .line 128
    iget-object p0, p0, Lcom/zui/gallery/app/AlbumPage;->mResumeEffect:Lcom/zui/gallery/ui/PhotoFallbackEffect;

    return-object p0
.end method

.method static synthetic access$602(Lcom/zui/gallery/app/AlbumPage;Lcom/zui/gallery/ui/PhotoFallbackEffect;)Lcom/zui/gallery/ui/PhotoFallbackEffect;
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/zui/gallery/app/AlbumPage;->mResumeEffect:Lcom/zui/gallery/ui/PhotoFallbackEffect;

    return-object p1
.end method

.method static synthetic access$700(Lcom/zui/gallery/app/AlbumPage;II)V
    .locals 0

    .line 128
    invoke-direct {p0, p1, p2}, Lcom/zui/gallery/app/AlbumPage;->pickPhoto(II)V

    return-void
.end method

.method static synthetic access$800(Lcom/zui/gallery/app/AlbumPage;)Landroid/app/ProgressDialog;
    .locals 0

    .line 128
    iget-object p0, p0, Lcom/zui/gallery/app/AlbumPage;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object p0
.end method

.method static synthetic access$802(Lcom/zui/gallery/app/AlbumPage;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/zui/gallery/app/AlbumPage;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$900(Lcom/zui/gallery/app/AlbumPage;I)V
    .locals 0

    .line 128
    invoke-direct {p0, p1}, Lcom/zui/gallery/app/AlbumPage;->onDown(I)V

    return-void
.end method

.method private addGetContentBottomView()V
    .locals 4

    .line 1924
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->isGetMultContent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1925
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const-string v1, "layout_inflater"

    .line 1926
    invoke-virtual {v0, v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 1927
    iget-object v1, p0, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getRootView()Landroid/widget/RelativeLayout;

    move-result-object v1

    const v2, 0x7f0b0075

    const/4 v3, 0x0

    .line 1928
    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->getContentBottomConatiner:Landroid/widget/LinearLayout;

    .line 1930
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    iget-object v2, p0, Lcom/zui/gallery/app/AlbumPage;->getContentBottomConatiner:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->setBottomMargin(Landroid/view/View;)V

    .line 1931
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->getContentBottomConatiner:Landroid/widget/LinearLayout;

    const v2, 0x7f0801bf

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->getContentTextView:Landroid/widget/TextView;

    .line 1932
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->getContentBottomConatiner:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 1933
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->getContentBottomConatiner:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 1934
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->getContentBottomConatiner:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/zui/gallery/app/AlbumPage$14;

    invoke-direct {v1, p0}, Lcom/zui/gallery/app/AlbumPage$14;-><init>(Lcom/zui/gallery/app/AlbumPage;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method private addPhoto()V
    .locals 4

    .line 2036
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/SelectionManager;->leaveSelectionMode()V

    const/4 v0, -0x1

    .line 2039
    :try_start_0
    iget-object v1, p0, Lcom/zui/gallery/app/AlbumPage;->mMediaSetPath:Lcom/zui/gallery/data/Path;

    invoke-virtual {v1}, Lcom/zui/gallery/data/Path;->getSuffix()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 2041
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    move v1, v0

    :goto_0
    if-ne v1, v0, :cond_0

    return-void

    .line 2046
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "addGroupId"

    .line 2047
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2048
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/zui/gallery/app/AlbumPage;->mMediaSet:Lcom/zui/gallery/data/MediaSet;

    invoke-virtual {v3}, Lcom/zui/gallery/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "set-title"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2049
    iget-object v1, p0, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    .line 2050
    invoke-virtual {v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getDataManager()Lcom/zui/gallery/data/DataManager;

    move-result-object v1

    const/4 v2, 0x7

    .line 2051
    invoke-virtual {v1, v2}, Lcom/zui/gallery/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "media-path"

    .line 2049
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2052
    iget-object v1, p0, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getStateManager()Lcom/zui/gallery/app/StateManager;

    move-result-object v1

    const-class v2, Lcom/zui/gallery/app/AlbumSetAddPage;

    invoke-virtual {v1, v2, v0}, Lcom/zui/gallery/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    return-void
.end method

.method private alreadySelected()V
    .locals 9

    .line 1053
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->isAppWidget4x2()Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    .line 1054
    invoke-static {}, Lcom/zui/gallery/widget/WidgetManger4x2;->getWidgetInstance()Lcom/zui/gallery/widget/WidgetManger4x2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/widget/WidgetManger4x2;->bannerDataExists()V

    .line 1055
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const-string v2, "multipleUriList4x2"

    invoke-static {v0, v2, v1}, Lcom/zui/gallery/util/GalleryUtils;->getFilePath(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1056
    iget-object v2, p0, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const-string v3, "albumImageUri4x2"

    invoke-static {v2, v3, v1}, Lcom/zui/gallery/util/GalleryUtils;->getFilePath(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1058
    :cond_0
    invoke-static {}, Lcom/zui/gallery/widget/WidgetMangerSingle;->getWidgetInstance()Lcom/zui/gallery/widget/WidgetMangerSingle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/widget/WidgetMangerSingle;->bannerDataExists()V

    .line 1059
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const-string v2, "albumImage_uri"

    invoke-static {v0, v2, v1}, Lcom/zui/gallery/util/GalleryUtils;->getFilePath(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1060
    iget-object v2, p0, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const-string v3, "multiple_uri_list"

    invoke-static {v2, v3, v1}, Lcom/zui/gallery/util/GalleryUtils;->getFilePath(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    .line 1062
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    .line 1063
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1064
    iget-object v2, p0, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getDataManager()Lcom/zui/gallery/data/DataManager;

    move-result-object v2

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v2, v1, v4}, Lcom/zui/gallery/data/DataManager;->findPathByUri(Landroid/net/Uri;Ljava/lang/String;)Lcom/zui/gallery/data/Path;

    move-result-object v1

    .line 1065
    iget-object v2, p0, Lcom/zui/gallery/app/AlbumPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {v2, v1}, Lcom/zui/gallery/ui/SelectionManager;->toggle(Lcom/zui/gallery/data/Path;)V

    .line 1068
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_3

    const-string v1, ","

    .line 1069
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1070
    iget-object v1, p0, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getDataManager()Lcom/zui/gallery/data/DataManager;

    move-result-object v1

    .line 1071
    array-length v5, v0

    :goto_1
    if-ge v2, v5, :cond_2

    aget-object v6, v0, v2

    .line 1072
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v1, v6, v4}, Lcom/zui/gallery/data/DataManager;->findPathByUri(Landroid/net/Uri;Ljava/lang/String;)Lcom/zui/gallery/data/Path;

    move-result-object v6

    .line 1073
    iget-object v7, p0, Lcom/zui/gallery/app/AlbumPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {v7, v6}, Lcom/zui/gallery/ui/SelectionManager;->toggle(Lcom/zui/gallery/data/Path;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1075
    :cond_2
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->mSlotView:Lcom/zui/gallery/ui/SlotView;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/SlotView;->invalidate()V

    .line 1076
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->mActionModeHandler:Lcom/zui/gallery/ui/ActionModeHandler;

    invoke-virtual {v0, v3}, Lcom/zui/gallery/ui/ActionModeHandler;->updateInfo(Z)V

    goto :goto_2

    .line 1079
    :cond_3
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->mActionModeHandler:Lcom/zui/gallery/ui/ActionModeHandler;

    invoke-virtual {v0, v2}, Lcom/zui/gallery/ui/ActionModeHandler;->updateInfo(Z)V

    :goto_2
    return-void
.end method

.method private clearLoadingBit(I)V
    .locals 2

    .line 1156
    iget v0, p0, Lcom/zui/gallery/app/AlbumPage;->mLoadingBits:I

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p0, Lcom/zui/gallery/app/AlbumPage;->mLoadingBits:I

    if-nez p1, :cond_4

    .line 1157
    iget-boolean p1, p0, Lcom/zui/gallery/app/AlbumPage;->mIsActive:Z

    if-eqz p1, :cond_4

    .line 1158
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumPage;->mAlbumDataAdapter:Lcom/zui/gallery/app/AlbumDataLoader;

    invoke-virtual {p1}, Lcom/zui/gallery/app/AlbumDataLoader;->size()I

    move-result p1

    if-nez p1, :cond_3

    .line 1161
    iget-boolean p1, p0, Lcom/zui/gallery/app/AlbumPage;->mGetContent:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 1162
    invoke-direct {p0}, Lcom/zui/gallery/app/AlbumPage;->updateTitleBarRightView()V

    .line 1163
    iput-boolean v0, p0, Lcom/zui/gallery/app/AlbumPage;->mShowedEmptyToastForSelf:Z

    .line 1164
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumPage;->mSlotView:Lcom/zui/gallery/ui/SlotView;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/SlotView;->invalidate()V

    goto :goto_1

    .line 1165
    :cond_0
    invoke-direct {p0}, Lcom/zui/gallery/app/AlbumPage;->isSystemGroupAlbum()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/zui/gallery/app/AlbumPage;->mMediaSet:Lcom/zui/gallery/data/MediaSet;

    invoke-virtual {p1}, Lcom/zui/gallery/data/MediaSet;->isGroupAlbum()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 1172
    :cond_1
    invoke-direct {p0}, Lcom/zui/gallery/app/AlbumPage;->updateTitleBarRightView()V

    .line 1173
    iput-boolean v0, p0, Lcom/zui/gallery/app/AlbumPage;->mShowedEmptyToastForSelf:Z

    .line 1174
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumPage;->mSlotView:Lcom/zui/gallery/ui/SlotView;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/SlotView;->invalidate()V

    goto :goto_1

    .line 1166
    :cond_2
    :goto_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v1, "empty-album"

    .line 1167
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v0, -0x1

    .line 1168
    invoke-virtual {p0, v0, p1}, Lcom/zui/gallery/app/AlbumPage;->setStateResult(ILandroid/content/Intent;)V

    .line 1169
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getStateManager()Lcom/zui/gallery/app/StateManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/zui/gallery/app/StateManager;->finishState(Lcom/zui/gallery/app/ActivityState;)V

    const-string p1, "AlbumPage"

    const-string v0, "finishState"

    .line 1170
    invoke-static {p1, v0}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    .line 1183
    :cond_3
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/SelectionManager;->resetTotalCount()V

    .line 1184
    invoke-direct {p0}, Lcom/zui/gallery/app/AlbumPage;->updateTitleBarRightView()V

    .line 1188
    :cond_4
    iget-boolean p1, p0, Lcom/zui/gallery/app/AlbumPage;->mShowedEmptyToastForSelf:Z

    if-eqz p1, :cond_5

    const/4 p1, 0x0

    .line 1189
    iput-boolean p1, p0, Lcom/zui/gallery/app/AlbumPage;->mShowedEmptyToastForSelf:Z

    :cond_5
    return-void
.end method

.method private closeFloatDialog()V
    .locals 1

    .line 2239
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->mFloatDialog:Lzui/app/FloatDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lzui/app/FloatDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2240
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->mFloatDialog:Lzui/app/FloatDialog;

    invoke-virtual {v0}, Lzui/app/FloatDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method private countMax(Lcom/zui/gallery/data/Path;I)V
    .locals 1

    .line 1100
    invoke-virtual {p0}, Lcom/zui/gallery/app/AlbumPage;->isMultipleChoice()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1102
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getGetMaxContent()I

    move-result v0

    if-le p2, v0, :cond_0

    .line 1104
    iget-object p2, p0, Lcom/zui/gallery/app/AlbumPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {p2, p1}, Lcom/zui/gallery/ui/SelectionManager;->toggle(Lcom/zui/gallery/data/Path;)V

    :cond_0
    return-void
.end method

.method private enterSelectionMode()V
    .locals 1

    .line 2031
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/SelectionManager;->enterSelectionMode()V

    return-void
.end method

.method private getItemIndex(Lcom/zui/gallery/data/Path;)I
    .locals 3

    .line 685
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->mSlotView:Lcom/zui/gallery/ui/SlotView;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/SlotView;->getVisibleStart()I

    move-result v0

    .line 686
    iget-object v1, p0, Lcom/zui/gallery/app/AlbumPage;->mSlotView:Lcom/zui/gallery/ui/SlotView;

    invoke-virtual {v1}, Lcom/zui/gallery/ui/SlotView;->getVisibleEnd()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    .line 688
    iget-object v2, p0, Lcom/zui/gallery/app/AlbumPage;->mAlbumDataAdapter:Lcom/zui/gallery/app/AlbumDataLoader;

    invoke-virtual {v2, v0}, Lcom/zui/gallery/app/AlbumDataLoader;->get(I)Lcom/zui/gallery/data/MediaItem;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 689
    invoke-virtual {v2}, Lcom/zui/gallery/data/MediaItem;->getPath()Lcom/zui/gallery/data/Path;

    move-result-object v2

    if-ne v2, p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method private getItemRect(I)Landroid/graphics/Rect;
    .locals 2

    .line 697
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->mSlotView:Lcom/zui/gallery/ui/SlotView;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/ui/SlotView;->getSlotRect(I)Landroid/graphics/Rect;

    move-result-object p1

    .line 698
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->mSlotView:Lcom/zui/gallery/ui/SlotView;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/SlotView;->getScrollY()I

    move-result v0

    neg-int v0, v0

    iget-object v1, p0, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    .line 699
    invoke-virtual {p0}, Lcom/zui/gallery/app/AlbumPage;->getStatusBarHeight()I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x0

    .line 698
    invoke-virtual {p1, v1, v0}, Landroid/graphics/Rect;->offset(II)V

    return-object p1
.end method

.method private getVideoMediaTypeIfNeed(Lcom/zui/gallery/data/MediaItem;)I
    .locals 9

    .line 2341
    invoke-virtual {p1}, Lcom/zui/gallery/data/MediaItem;->getMediaType()I

    move-result v0

    .line 2342
    invoke-virtual {p1}, Lcom/zui/gallery/data/MediaItem;->getMediaType()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    move-object v1, p1

    check-cast v1, Lcom/zui/gallery/data/LocalMediaItem;

    invoke-virtual {v1}, Lcom/zui/gallery/data/LocalMediaItem;->getBucketId()I

    move-result v1

    sget v2, Lcom/zui/gallery/util/MediaSetUtils;->SCREENRECORDER_VIDEO_ID:I

    if-ne v1, v2, :cond_2

    const/4 v1, 0x0

    .line 2345
    :try_start_0
    iget-object v2, p0, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/zui/gallery/database/GalleryContract$ShadowVideoShips;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Lcom/zui/gallery/database/GalleryContract$ShadowVideoShips;->PROJECTIONS:[Ljava/lang/String;

    const-string v6, "_data=? "

    const/4 v2, 0x1

    new-array v7, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/zui/gallery/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v7, v2

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    const/16 p1, 0x13

    if-eqz v1, :cond_0

    .line 2346
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    .line 2347
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v2, p1, :cond_0

    move v0, p1

    :cond_0
    if-eqz v1, :cond_2

    .line 2356
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception p1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2358
    :cond_1
    throw p1

    :catch_0
    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method

.method private initTitleBar()V
    .locals 4

    .line 1723
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getTitleBar()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f08036e

    .line 1724
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/zui/gallery/app/AlbumPage;->subTitleTextView:Landroid/widget/TextView;

    const v1, 0x7f08036f

    .line 1725
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/zui/gallery/app/AlbumPage;->titleBarLeftContainer:Landroid/widget/LinearLayout;

    const v1, 0x7f08036d

    .line 1726
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/zui/gallery/app/AlbumPage;->titleTextView:Landroid/widget/TextView;

    .line 1727
    iget-object v2, p0, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060096

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    const v1, 0x7f080370

    .line 1728
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->titleBarRightContainer:Landroid/widget/LinearLayout;

    const v1, 0x7f0802ce

    .line 1729
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->rightTextView:Landroid/widget/TextView;

    .line 1730
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->titleBarRightContainer:Landroid/widget/LinearLayout;

    const v1, 0x7f0802cd

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->rightNewFolderImageView:Landroid/widget/ImageView;

    .line 1731
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->titleBarRightContainer:Landroid/widget/LinearLayout;

    const v1, 0x7f0802ca

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->rightSelectImageView:Landroid/widget/ImageView;

    .line 1732
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->titleBarLeftContainer:Landroid/widget/LinearLayout;

    const v1, 0x7f080214

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->leftBackUpImageView:Landroid/widget/ImageView;

    .line 1733
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->titleBarLeftContainer:Landroid/widget/LinearLayout;

    const v1, 0x7f080215

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->leftTextView:Landroid/widget/TextView;

    .line 1734
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->titleBarRightContainer:Landroid/widget/LinearLayout;

    const v1, 0x7f0802cb

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->settingView:Landroid/view/View;

    .line 1735
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const v1, 0x7f01000c

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->animation:Landroid/view/animation/Animation;

    return-void
.end method

.method private initializeData(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "media-path"

    .line 860
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/gallery/data/Path;->fromString(Ljava/lang/String;)Lcom/zui/gallery/data/Path;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->mMediaSetPath:Lcom/zui/gallery/data/Path;

    const-string v0, "parent-media-path"

    .line 861
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->mParentMediaSetString:Ljava/lang/String;

    .line 862
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getDataManager()Lcom/zui/gallery/data/DataManager;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/gallery/app/AlbumPage;->mMediaSetPath:Lcom/zui/gallery/data/Path;

    invoke-virtual {v0, v1}, Lcom/zui/gallery/data/DataManager;->getMediaSet(Lcom/zui/gallery/data/Path;)Lcom/zui/gallery/data/MediaSet;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->mMediaSet:Lcom/zui/gallery/data/MediaSet;

    const-string/jumbo v0, "type-bits"

    .line 863
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/zui/gallery/app/AlbumPage;->mTypeBits:I

    .line 865
    iget-boolean v0, p0, Lcom/zui/gallery/app/AlbumPage;->mGetContent:Z

    if-nez v0, :cond_1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    const/16 v0, 0x9

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 p1, 0x3

    .line 867
    iput p1, p0, Lcom/zui/gallery/app/AlbumPage;->mTypeBits:I

    .line 871
    :cond_1
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumPage;->mMediaSet:Lcom/zui/gallery/data/MediaSet;

    if-nez p1, :cond_2

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 872
    iget-object v1, p0, Lcom/zui/gallery/app/AlbumPage;->mMediaSetPath:Lcom/zui/gallery/data/Path;

    aput-object v1, p1, v0

    const-string v0, "MediaSet is null. Path = %s"

    invoke-static {v0, p1}, Lcom/zui/gallery/common/Utils;->fail(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 876
    :cond_2
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumPage;->mActionModeHandler:Lcom/zui/gallery/ui/ActionModeHandler;

    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->mMediaSet:Lcom/zui/gallery/data/MediaSet;

    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaSet;->isGroupAlbum()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/zui/gallery/ui/ActionModeHandler;->setIsGroupAlbum(Z)V

    .line 879
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->mMediaSet:Lcom/zui/gallery/data/MediaSet;

    invoke-virtual {p1, v0}, Lcom/zui/gallery/ui/SelectionManager;->setSourceMediaSet(Lcom/zui/gallery/data/MediaSet;)V

    .line 880
    new-instance p1, Lcom/zui/gallery/app/AlbumDataLoader;

    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    iget-object v1, p0, Lcom/zui/gallery/app/AlbumPage;->mMediaSet:Lcom/zui/gallery/data/MediaSet;

    invoke-direct {p1, v0, v1}, Lcom/zui/gallery/app/AlbumDataLoader;-><init>(Lcom/zui/gallery/app/AbstractGalleryActivity;Lcom/zui/gallery/data/MediaSet;)V

    iput-object p1, p0, Lcom/zui/gallery/app/AlbumPage;->mAlbumDataAdapter:Lcom/zui/gallery/app/AlbumDataLoader;

    .line 881
    new-instance v0, Lcom/zui/gallery/app/AlbumPage$MyLoadingListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/zui/gallery/app/AlbumPage$MyLoadingListener;-><init>(Lcom/zui/gallery/app/AlbumPage;Lcom/zui/gallery/app/AlbumPage$1;)V

    invoke-virtual {p1, v0}, Lcom/zui/gallery/app/AlbumDataLoader;->setLoadingListener(Lcom/zui/gallery/app/LoadingListener;)V

    .line 882
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumPage;->mAlbumView:Lcom/zui/gallery/ui/AlbumSlotRenderer;

    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->mAlbumDataAdapter:Lcom/zui/gallery/app/AlbumDataLoader;

    invoke-virtual {p1, v0}, Lcom/zui/gallery/ui/AlbumSlotRenderer;->setModel(Lcom/zui/gallery/app/AlbumDataLoader;)V

    .line 885
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumPage;->mSlotView:Lcom/zui/gallery/ui/SlotView;

    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->mMediaSet:Lcom/zui/gallery/data/MediaSet;

    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaSet;->isPanoAlbum()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/zui/gallery/ui/SlotView;->setIsPanoAlbum(Z)V

    return-void
.end method

.method private initializeViews()V
    .locals 10

    .line 825
    new-instance v0, Lcom/zui/gallery/ui/SelectionManager;

    iget-object v1, p0, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/zui/gallery/ui/SelectionManager;-><init>(Lcom/zui/gallery/app/AbstractGalleryActivity;Z)V

    iput-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    .line 826
    invoke-virtual {v0, p0}, Lcom/zui/gallery/ui/SelectionManager;->setSelectionListener(Lcom/zui/gallery/ui/SelectionManager$SelectionListener;)V

    .line 827
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-static {v0}, Lcom/zui/gallery/app/Config$AlbumPage;->get(Landroid/content/Context;)Lcom/zui/gallery/app/Config$AlbumPage;

    move-result-object v0

    .line 828
    new-instance v1, Lcom/zui/gallery/ui/SlotView;

    iget-object v2, p0, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    iget-object v3, v0, Lcom/zui/gallery/app/Config$AlbumPage;->slotViewSpec:Lcom/zui/gallery/ui/SlotView$Spec;

    invoke-direct {v1, v2, v3}, Lcom/zui/gallery/ui/SlotView;-><init>(Lcom/zui/gallery/app/AbstractGalleryActivity;Lcom/zui/gallery/ui/SlotView$Spec;)V

    iput-object v1, p0, Lcom/zui/gallery/app/AlbumPage;->mSlotView:Lcom/zui/gallery/ui/SlotView;

    .line 829
    new-instance v1, Lcom/zui/gallery/ui/AlbumSlotRenderer;

    iget-object v5, p0, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    iget-object v6, p0, Lcom/zui/gallery/app/AlbumPage;->mSlotView:Lcom/zui/gallery/ui/SlotView;

    iget-object v7, p0, Lcom/zui/gallery/app/AlbumPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    iget v8, v0, Lcom/zui/gallery/app/Config$AlbumPage;->placeholderColor:I

    iget-object v9, v0, Lcom/zui/gallery/app/Config$AlbumPage;->labelSpec:Lcom/zui/gallery/ui/AlbumSlotRenderer$LabelSpec;

    move-object v4, v1

    invoke-direct/range {v4 .. v9}, Lcom/zui/gallery/ui/AlbumSlotRenderer;-><init>(Lcom/zui/gallery/app/AbstractGalleryActivity;Lcom/zui/gallery/ui/SlotView;Lcom/zui/gallery/ui/SelectionManager;ILcom/zui/gallery/ui/AlbumSlotRenderer$LabelSpec;)V

    iput-object v1, p0, Lcom/zui/gallery/app/AlbumPage;->mAlbumView:Lcom/zui/gallery/ui/AlbumSlotRenderer;

    .line 831
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->mSlotView:Lcom/zui/gallery/ui/SlotView;

    invoke-virtual {v0, v1}, Lcom/zui/gallery/ui/SlotView;->setSlotRenderer(Lcom/zui/gallery/ui/SlotView$SlotRenderer;)V

    .line 832
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->mRootPane:Lcom/zui/gallery/ui/GLView;

    iget-object v1, p0, Lcom/zui/gallery/app/AlbumPage;->mSlotView:Lcom/zui/gallery/ui/SlotView;

    invoke-virtual {v0, v1}, Lcom/zui/gallery/ui/GLView;->addComponent(Lcom/zui/gallery/ui/GLView;)V

    .line 833
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->mSlotView:Lcom/zui/gallery/ui/SlotView;

    new-instance v1, Lcom/zui/gallery/app/AlbumPage$4;

    invoke-direct {v1, p0}, Lcom/zui/gallery/app/AlbumPage$4;-><init>(Lcom/zui/gallery/app/AlbumPage;)V

    invoke-virtual {v0, v1}, Lcom/zui/gallery/ui/SlotView;->setListener(Lcom/zui/gallery/ui/SlotView$Listener;)V

    .line 856
    new-instance v0, Lcom/zui/gallery/ui/ActionModeHandler;

    iget-object v1, p0, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    iget-object v2, p0, Lcom/zui/gallery/app/AlbumPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    iget-object v3, p0, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getEditTitleBar()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-direct {v0, v1, v2, v3}, Lcom/zui/gallery/ui/ActionModeHandler;-><init>(Lcom/zui/gallery/app/AbstractGalleryActivity;Lcom/zui/gallery/ui/SelectionManager;Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->mActionModeHandler:Lcom/zui/gallery/ui/ActionModeHandler;

    return-void
.end method

.method private isAllPhotoPage()Z
    .locals 1

    .line 1719
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->isThirdAppCall()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->mMediaSet:Lcom/zui/gallery/data/MediaSet;

    if-eqz v0, :cond_0

    instance-of v0, v0, Lcom/zui/gallery/data/LocalMergeAllAlbum;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isFloatDialogShowing()Z
    .locals 1

    .line 2245
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->mFloatDialog:Lzui/app/FloatDialog;

    if-eqz v0, :cond_0

    .line 2246
    invoke-virtual {v0}, Lzui/app/FloatDialog;->isShowing()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isPanoAlbum()Z
    .locals 1

    .line 1580
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->mMediaSet:Lcom/zui/gallery/data/MediaSet;

    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaSet;->isPanoAlbum()Z

    move-result v0

    return v0
.end method

.method private isSelfAlbum()Z
    .locals 1

    .line 1584
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->mMediaSet:Lcom/zui/gallery/data/MediaSet;

    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaSet;->isSelfAlbum()Z

    move-result v0

    return v0
.end method

.method private isSystemGroupAlbum()Z
    .locals 1

    .line 1573
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->mMediaSet:Lcom/zui/gallery/data/MediaSet;

    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaSet;->isFavoriteAlbum()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->mMediaSet:Lcom/zui/gallery/data/MediaSet;

    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaSet;->isPanoAlbum()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->mMediaSet:Lcom/zui/gallery/data/MediaSet;

    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaSet;->isSelfAlbum()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->mMediaSet:Lcom/zui/gallery/data/MediaSet;

    .line 1574
    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaSet;->isVideoAlbum()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private launchPhotoEditor()V
    .locals 9

    .line 2253
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->longTapItem:Lcom/zui/gallery/data/MediaItem;

    .line 2255
    invoke-direct {p0, v0}, Lcom/zui/gallery/app/AlbumPage;->getVideoMediaTypeIfNeed(Lcom/zui/gallery/data/MediaItem;)I

    move-result v1

    .line 2256
    invoke-static {v1}, Lcom/zui/gallery/util/GalleryUtils;->canVideoEditType(I)Z

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x0

    const-string v4, "AlbumPage"

    const/4 v5, 0x0

    if-eqz v1, :cond_3

    .line 2257
    const-class v1, Lcom/zui/gallery/app/NormalVideoTrimActivity;

    .line 2258
    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaItem;->getMediaType()I

    move-result v6

    const/16 v7, 0xa

    if-ne v6, v7, :cond_0

    goto :goto_2

    .line 2260
    :cond_0
    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaItem;->getMediaType()I

    move-result v6

    const/16 v7, 0xb

    if-ne v6, v7, :cond_2

    .line 2261
    const-class v1, Lcom/zui/gallery/app/Best4KVideoSelectActivity;

    .line 2265
    :try_start_0
    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v6

    .line 2266
    new-instance v7, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v7}, Landroid/media/MediaMetadataRetriever;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2267
    :try_start_1
    invoke-virtual {v7, v6}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    const/16 v3, 0x18

    .line 2268
    invoke-virtual {v7, v3}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v3

    .line 2270
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "degreeeString "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2271
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2276
    invoke-virtual {v7}, Landroid/media/MediaMetadataRetriever;->release()V

    goto :goto_3

    :catch_0
    move-exception v3

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v4

    move-object v7, v3

    move-object v3, v4

    .line 2273
    :goto_0
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v7, :cond_2

    .line 2276
    invoke-virtual {v7}, Landroid/media/MediaMetadataRetriever;->release()V

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v3, v7

    :goto_1
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 2278
    :cond_1
    throw v0

    :cond_2
    :goto_2
    move v3, v5

    .line 2281
    :goto_3
    new-instance v4, Landroid/content/Intent;

    iget-object v6, p0, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-direct {v4, v6, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2282
    sget-object v1, Lcom/zui/gallery/app/GalleryActivity;->SECURE_CAMERA_EXTRA:Ljava/lang/String;

    invoke-virtual {v4, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2283
    sget-object v1, Lcom/zui/gallery/app/GalleryActivity;->NEED_SCREEN_BRIGHT:Ljava/lang/String;

    iget-object v5, p0, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v5}, Lcom/zui/gallery/app/AbstractGalleryActivity;->isNeedHightBright()Z

    move-result v5

    invoke-virtual {v4, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2284
    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaItem;->getPath()Lcom/zui/gallery/data/Path;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/data/Path;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "video_roatedegress"

    .line 2285
    invoke-virtual {v4, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "media-item-path"

    .line 2286
    invoke-virtual {v4, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2287
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0, v4, v2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    :cond_3
    if-eqz v0, :cond_4

    .line 2292
    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaItem;->getSupportedOperations()I

    move-result v1

    and-int/lit16 v1, v1, 0x200

    if-nez v1, :cond_5

    :cond_4
    if-eqz v0, :cond_9

    .line 2294
    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zui/gallery/common/BitmapUtils;->isImageType(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2295
    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zui/gallery/common/BitmapUtils;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_5
    if-nez v3, :cond_6

    .line 2306
    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v3

    :cond_6
    const/4 v1, -0x1

    .line 2317
    new-instance v4, Landroid/content/Intent;

    const-string v6, "action_nextgen_edit"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2318
    iget-object v6, p0, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const-class v7, Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 2319
    sget-object v6, Lcom/zui/gallery/app/GalleryActivity;->SECURE_CAMERA_EXTRA:Ljava/lang/String;

    invoke-virtual {v4, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2320
    sget-object v6, Lcom/zui/gallery/app/GalleryActivity;->NEED_SCREEN_BRIGHT:Ljava/lang/String;

    iget-object v7, p0, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v7}, Lcom/zui/gallery/app/AbstractGalleryActivity;->isNeedHightBright()Z

    move-result v7

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2326
    sget-object v6, Lcom/zui/gallery/filtershow/FilterShowActivity;->IS_PANO:Ljava/lang/String;

    invoke-virtual {v4, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2327
    sget-object v6, Lcom/zui/gallery/filtershow/FilterShowActivity;->GROUP_ID:Ljava/lang/String;

    invoke-virtual {v4, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2328
    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaItem;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2330
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/high16 v1, 0x10000

    .line 2331
    invoke-virtual {v0, v4, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "android.intent.action.EDIT"

    .line 2332
    invoke-virtual {v4, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :cond_7
    const-string v0, "launch-fullscreen"

    .line 2334
    invoke-virtual {v4, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2335
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0, v4, v2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    :cond_8
    const-string v0, "can\'t edit photo type is not photo "

    .line 2297
    invoke-static {v4, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_9
    const-string v0, "can\'t edit photo photo is null "

    .line 2301
    invoke-static {v4, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private onDown(I)V
    .locals 1

    .line 371
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->mAlbumView:Lcom/zui/gallery/ui/AlbumSlotRenderer;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/ui/AlbumSlotRenderer;->setPressedIndex(I)V

    return-void
.end method

.method private onGetContent(Lcom/zui/gallery/data/MediaItem;)V
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 484
    iget-object v2, v1, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getDataManager()Lcom/zui/gallery/data/DataManager;

    move-result-object v2

    .line 485
    iget-object v3, v1, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    .line 486
    iget-object v4, v1, Lcom/zui/gallery/app/AlbumPage;->mData:Landroid/os/Bundle;

    const-string v5, "crop"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "return-data"

    const-string v6, "output"

    const/4 v7, 0x1

    const/high16 v8, 0x2000000

    if-eqz v4, :cond_1

    .line 487
    invoke-virtual/range {p1 .. p1}, Lcom/zui/gallery/data/MediaItem;->getPath()Lcom/zui/gallery/data/Path;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/zui/gallery/data/DataManager;->getContentUri(Lcom/zui/gallery/data/Path;)Landroid/net/Uri;

    move-result-object v0

    .line 488
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.android.camera.action.CROP"

    invoke-direct {v2, v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 489
    invoke-virtual {v2, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 490
    invoke-virtual/range {p0 .. p0}, Lcom/zui/gallery/app/AlbumPage;->getData()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    .line 491
    iget-object v2, v1, Lcom/zui/gallery/app/AlbumPage;->mData:Landroid/os/Bundle;

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    if-nez v2, :cond_0

    .line 492
    invoke-virtual {v0, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 494
    :cond_0
    invoke-virtual {v3, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 495
    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    goto/16 :goto_1

    .line 496
    :cond_1
    iget-object v4, v1, Lcom/zui/gallery/app/AlbumPage;->mData:Landroid/os/Bundle;

    const-string/jumbo v9, "setWallpaper"

    const/4 v10, 0x0

    invoke-virtual {v4, v9, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    const-string v9, "AlbumPage"

    if-eqz v4, :cond_e

    .line 497
    instance-of v4, v0, Lcom/zui/gallery/data/LocalImage;

    if-eqz v4, :cond_6

    .line 498
    invoke-virtual/range {p1 .. p1}, Lcom/zui/gallery/data/MediaItem;->getPath()Lcom/zui/gallery/data/Path;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/zui/gallery/data/DataManager;->getContentUri(Lcom/zui/gallery/data/Path;)Landroid/net/Uri;

    move-result-object v2

    .line 499
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v9, "zui.service.wallpaper.CROP_AND_SET_WALLPAPER"

    invoke-direct {v4, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 500
    invoke-virtual {v4, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 501
    invoke-virtual/range {p0 .. p0}, Lcom/zui/gallery/app/AlbumPage;->getData()Landroid/os/Bundle;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 502
    invoke-virtual/range {p1 .. p1}, Lcom/zui/gallery/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 503
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_2

    sget-object v9, Lcom/zui/gallery/app/AlbumPage;->DOWNLOAD_PIC_TYPE:Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    :cond_2
    if-eqz v0, :cond_3

    .line 505
    invoke-virtual/range {p1 .. p1}, Lcom/zui/gallery/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/zui/gallery/common/BitmapUtils;->isImageType(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 506
    invoke-virtual/range {p1 .. p1}, Lcom/zui/gallery/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/gallery/common/BitmapUtils;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    :cond_3
    if-eqz v8, :cond_4

    .line 510
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 511
    invoke-virtual {v4, v2, v8}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 513
    :cond_4
    iget-object v0, v1, Lcom/zui/gallery/app/AlbumPage;->mData:Landroid/os/Bundle;

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    if-nez v0, :cond_5

    .line 514
    invoke-virtual {v4, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 516
    :cond_5
    invoke-virtual {v3, v4}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 517
    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    goto/16 :goto_1

    .line 518
    :cond_6
    instance-of v4, v0, Lcom/zui/gallery/data/LocalVideo;

    if-eqz v4, :cond_f

    .line 519
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, v1, Lcom/zui/gallery/app/AlbumPage;->lastBottomBarClickedTime:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x2bc

    cmp-long v4, v4, v6

    if-gez v4, :cond_7

    return-void

    .line 522
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v1, Lcom/zui/gallery/app/AlbumPage;->lastBottomBarClickedTime:J

    .line 524
    invoke-virtual/range {p1 .. p1}, Lcom/zui/gallery/data/MediaItem;->getWidth()I

    move-result v4

    .line 525
    invoke-virtual/range {p1 .. p1}, Lcom/zui/gallery/data/MediaItem;->getHeight()I

    move-result v5

    .line 526
    move-object v6, v0

    check-cast v6, Lcom/zui/gallery/data/LocalVideo;

    iget v7, v6, Lcom/zui/gallery/data/LocalVideo;->durationInSec:I

    int-to-long v11, v7

    .line 527
    iget-wide v13, v6, Lcom/zui/gallery/data/LocalVideo;->fileSize:J

    .line 530
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v7}, Ljava/text/NumberFormat;->getNumberInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v7

    check-cast v7, Ljava/text/DecimalFormat;

    const-string v15, "#.##"

    .line 531
    invoke-virtual {v7, v15}, Ljava/text/DecimalFormat;->applyPattern(Ljava/lang/String;)V

    long-to-float v13, v13

    const v14, 0x49742400    # 1000000.0f

    div-float/2addr v13, v14

    float-to-double v13, v13

    .line 534
    invoke-virtual {v7, v13, v14}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v13

    move-object v15, v9

    int-to-double v8, v4

    move-wide/from16 v16, v11

    int-to-double v10, v5

    div-double/2addr v8, v10

    .line 535
    invoke-virtual {v7, v8, v9}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    .line 537
    iget-object v9, v1, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v9}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f090036

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    .line 538
    iget-object v10, v1, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v10}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f090035

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    .line 539
    iget-object v11, v1, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v11}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f1002b7

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v11

    .line 540
    iget-object v0, v1, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1002b8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    move-object/from16 v18, v15

    .line 542
    new-instance v15, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v15}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 543
    iget-object v6, v6, Lcom/zui/gallery/data/LocalVideo;->filePath:Ljava/lang/String;

    invoke-virtual {v15, v6}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    const/16 v6, 0x18

    .line 544
    invoke-virtual {v15, v6}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v6

    .line 545
    invoke-virtual {v15}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 546
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v19, v2

    const-string v2, "onGetContent: set video wallpaper, videoWidth:"

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " videoHeight:"

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " duration:"

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v4, v16

    invoke-virtual {v15, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " videoSize:"

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13, v14}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, " videoRatio:"

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, " rotation:"

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v15, v18

    invoke-static {v15, v2}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-wide/from16 v16, v0

    int-to-double v0, v9

    cmpl-double v0, v13, v0

    if-lez v0, :cond_8

    const v0, 0x7f1002b5

    const/4 v1, 0x0

    .line 550
    invoke-static {v3, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_8
    const/4 v1, 0x0

    int-to-long v9, v10

    cmp-long v0, v4, v9

    if-lez v0, :cond_9

    const v0, 0x7f1002b3

    .line 553
    invoke-static {v3, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_9
    if-eqz v6, :cond_a

    const-string v0, "0"

    .line 555
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "180"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    :cond_a
    cmpg-double v0, v7, v11

    if-ltz v0, :cond_d

    cmpl-double v0, v7, v16

    if-lez v0, :cond_b

    goto :goto_0

    .line 561
    :cond_b
    invoke-virtual/range {p1 .. p1}, Lcom/zui/gallery/data/MediaItem;->getPath()Lcom/zui/gallery/data/Path;

    move-result-object v0

    move-object/from16 v1, v19

    invoke-virtual {v1, v0}, Lcom/zui/gallery/data/DataManager;->getContentUri(Lcom/zui/gallery/data/Path;)Landroid/net/Uri;

    move-result-object v0

    .line 562
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "zui.service.wallpaper.video.CROP_AND_SET_WALLPAPER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 563
    invoke-virtual/range {p1 .. p1}, Lcom/zui/gallery/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "video_file_path"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 564
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AlbumPage video_file_path:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/zui/gallery/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "MovieActivity"

    invoke-static {v4, v2}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v2, 0x2000000

    .line 565
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 566
    invoke-virtual/range {p0 .. p0}, Lcom/zui/gallery/app/AlbumPage;->getData()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 567
    invoke-virtual/range {p1 .. p1}, Lcom/zui/gallery/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_c

    .line 568
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_c

    .line 569
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 571
    :cond_c
    invoke-virtual {v3, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 572
    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    goto :goto_1

    :cond_d
    :goto_0
    const v0, 0x7f1002b4

    const/4 v1, 0x0

    .line 557
    invoke-static {v3, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_e
    move-object v15, v9

    .line 576
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/zui/gallery/data/MediaItem;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 577
    invoke-virtual {v0, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, -0x1

    .line 578
    invoke-virtual {v3, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 579
    invoke-virtual {v3}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 581
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    :goto_1
    return-void
.end method

.method private onSingleTapUp(II)V
    .locals 3

    .line 385
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSingleTapUp, mIsActive = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/zui/gallery/app/AlbumPage;->mIsActive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "panhui2"

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    iget-boolean v0, p0, Lcom/zui/gallery/app/AlbumPage;->mIsActive:Z

    if-nez v0, :cond_0

    return-void

    .line 390
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    const-string p2, "onSingleTapUp, 1111"

    .line 392
    invoke-static {v1, p2}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    iget-object p2, p0, Lcom/zui/gallery/app/AlbumPage;->mAlbumDataAdapter:Lcom/zui/gallery/app/AlbumDataLoader;

    invoke-virtual {p2, p1}, Lcom/zui/gallery/app/AlbumDataLoader;->getMediaItem(I)Lcom/zui/gallery/data/MediaItem;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 398
    :cond_1
    iget-object p2, p0, Lcom/zui/gallery/app/AlbumPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {p1}, Lcom/zui/gallery/data/MediaItem;->getPath()Lcom/zui/gallery/data/Path;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/zui/gallery/ui/SelectionManager;->toggle(Lcom/zui/gallery/data/Path;)V

    .line 400
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/SelectionManager;->getSelectedCount()I

    move-result p1

    if-lez p1, :cond_2

    .line 401
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->setAddToPrivacyIfEnnable(Z)V

    goto :goto_0

    .line 403
    :cond_2
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p1, v2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->setAddToPrivacyIfEnnable(Z)V

    .line 405
    :goto_0
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumPage;->mSlotView:Lcom/zui/gallery/ui/SlotView;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/SlotView;->invalidate()V

    goto :goto_1

    :cond_3
    const-string v0, "onSingleTapUp, 2222"

    .line 408
    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->mAlbumView:Lcom/zui/gallery/ui/AlbumSlotRenderer;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/ui/AlbumSlotRenderer;->setPressedIndex(I)V

    .line 412
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->mAlbumView:Lcom/zui/gallery/ui/AlbumSlotRenderer;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/AlbumSlotRenderer;->setPressedUp()V

    .line 413
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_1
    return-void
.end method

.method private onUp(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 377
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumPage;->mAlbumView:Lcom/zui/gallery/ui/AlbumSlotRenderer;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/zui/gallery/ui/AlbumSlotRenderer;->setPressedIndex(I)V

    goto :goto_0

    .line 379
    :cond_0
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumPage;->mAlbumView:Lcom/zui/gallery/ui/AlbumSlotRenderer;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/AlbumSlotRenderer;->setPressedUp()V

    :goto_0
    return-void
.end method

.method private onUpPressed()V
    .locals 3

    .line 350
    iget-boolean v0, p0, Lcom/zui/gallery/app/AlbumPage;->mInCameraApp:Z

    if-eqz v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-static {v0}, Lcom/zui/gallery/util/GalleryUtils;->startGalleryActivity(Landroid/content/Context;)V

    goto :goto_0

    .line 352
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getStateManager()Lcom/zui/gallery/app/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/app/StateManager;->getStateCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 353
    invoke-direct {p0}, Lcom/zui/gallery/app/AlbumPage;->removeGetContenBottomView()V

    .line 354
    invoke-super {p0}, Lcom/zui/gallery/app/ActivityState;->onBackPressed()V

    goto :goto_0

    .line 355
    :cond_1
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->mParentMediaSetString:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 356
    new-instance v0, Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/zui/gallery/app/AlbumPage;->getData()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 357
    iget-object v1, p0, Lcom/zui/gallery/app/AlbumPage;->mParentMediaSetString:Ljava/lang/String;

    const-string v2, "media-path"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    iget-object v1, p0, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getStateManager()Lcom/zui/gallery/app/StateManager;

    move-result-object v1

    const-class v2, Lcom/zui/gallery/app/AlbumSetPage;

    invoke-virtual {v1, p0, v2, v0}, Lcom/zui/gallery/app/StateManager;->switchState(Lcom/zui/gallery/app/ActivityState;Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_0

    .line 360
    :cond_2
    iget-boolean v0, p0, Lcom/zui/gallery/app/AlbumPage;->mGetContent:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/zui/gallery/app/AlbumPage;->isMultipleChoice()Z

    move-result v0

    if-nez v0, :cond_3

    .line 361
    invoke-direct {p0}, Lcom/zui/gallery/app/AlbumPage;->removeGetContenBottomView()V

    .line 362
    invoke-super {p0}, Lcom/zui/gallery/app/ActivityState;->onBackPressed()V

    goto :goto_0

    .line 363
    :cond_3
    iget-boolean v0, p0, Lcom/zui/gallery/app/AlbumPage;->mGetContent:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/zui/gallery/app/AlbumPage;->isMultipleChoice()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 365
    invoke-direct {p0}, Lcom/zui/gallery/app/AlbumPage;->removeGetContenBottomView()V

    .line 366
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->finishAndRemoveTask()V

    :cond_4
    :goto_0
    return-void
.end method

.method private pickPhoto(II)V
    .locals 1

    const/4 v0, 0x0

    .line 419
    invoke-direct {p0, p1, v0, p2}, Lcom/zui/gallery/app/AlbumPage;->pickPhoto(IZI)V

    return-void
.end method

.method private pickPhoto(IZI)V
    .locals 5

    .line 423
    iget-boolean v0, p0, Lcom/zui/gallery/app/AlbumPage;->mIsActive:Z

    if-nez v0, :cond_0

    return-void

    .line 432
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->mAlbumDataAdapter:Lcom/zui/gallery/app/AlbumDataLoader;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/app/AlbumDataLoader;->get(I)Lcom/zui/gallery/data/MediaItem;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 435
    :cond_1
    iget-boolean v1, p0, Lcom/zui/gallery/app/AlbumPage;->mGetContent:Z

    if-eqz v1, :cond_3

    .line 436
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->isGetMultContent()Z

    move-result p1

    if-eqz p1, :cond_2

    goto/16 :goto_0

    .line 439
    :cond_2
    invoke-direct {p0, v0}, Lcom/zui/gallery/app/AlbumPage;->onGetContent(Lcom/zui/gallery/data/MediaItem;)V

    goto/16 :goto_0

    .line 441
    :cond_3
    iget-boolean v1, p0, Lcom/zui/gallery/app/AlbumPage;->mLaunchedFromPhotoPage:Z

    const-string v2, "index-hint"

    const-string v3, "albumpage-transition"

    if-eqz v1, :cond_4

    .line 442
    iget-object p2, p0, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getTransitionStore()Lcom/zui/gallery/app/TransitionStore;

    move-result-object p2

    const/4 p3, 0x4

    .line 445
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    .line 443
    invoke-virtual {p2, v3, p3}, Lcom/zui/gallery/app/TransitionStore;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 446
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, v2, p1}, Lcom/zui/gallery/app/TransitionStore;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 447
    invoke-virtual {p0}, Lcom/zui/gallery/app/AlbumPage;->onBackPressed()V

    goto/16 :goto_0

    .line 451
    :cond_4
    iget-object v1, p0, Lcom/zui/gallery/app/AlbumPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {v1}, Lcom/zui/gallery/ui/SelectionManager;->inSelectionMode()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 452
    iget-object v1, p0, Lcom/zui/gallery/app/AlbumPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {v1}, Lcom/zui/gallery/ui/SelectionManager;->leaveSelectionMode()V

    .line 454
    :cond_5
    iget-object v1, p0, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/zui/gallery/app/AbstractGalleryActivity;->showTab(Z)V

    .line 458
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 459
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 460
    iget-object v2, p0, Lcom/zui/gallery/app/AlbumPage;->mSlotView:Lcom/zui/gallery/ui/SlotView;

    iget-object v4, p0, Lcom/zui/gallery/app/AlbumPage;->mRootPane:Lcom/zui/gallery/ui/GLView;

    .line 461
    invoke-virtual {v2, p1, v4}, Lcom/zui/gallery/ui/SlotView;->getSlotRect(ILcom/zui/gallery/ui/GLView;)Landroid/graphics/Rect;

    move-result-object p1

    const-string v2, "open-animation-rect"

    .line 460
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 462
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumPage;->mMediaSetPath:Lcom/zui/gallery/data/Path;

    .line 463
    invoke-virtual {p1}, Lcom/zui/gallery/data/Path;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "media-set-path"

    .line 462
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaItem;->getPath()Lcom/zui/gallery/data/Path;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/gallery/data/Path;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "media-item-path"

    .line 464
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 466
    invoke-virtual {v1, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p1, "start-in-filmstrip"

    .line 468
    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 470
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumPage;->mMediaSet:Lcom/zui/gallery/data/MediaSet;

    invoke-virtual {p1}, Lcom/zui/gallery/data/MediaSet;->isCameraRoll()Z

    move-result p1

    const-string v2, "in_camera_roll"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    if-eqz p2, :cond_6

    .line 472
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getStateManager()Lcom/zui/gallery/app/StateManager;

    move-result-object p1

    const-class p2, Lcom/zui/gallery/app/FilmstripPage;

    invoke-virtual {p1, p0, p2, v1}, Lcom/zui/gallery/app/StateManager;->switchState(Lcom/zui/gallery/app/ActivityState;Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_0

    .line 474
    :cond_6
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getDataManager()Lcom/zui/gallery/data/DataManager;

    move-result-object p1

    invoke-static {p1, v0, p3}, Lcom/zui/lenovoone/LenovoOneHelper;->open(Lcom/zui/gallery/data/DataManager;Lcom/zui/gallery/data/MediaItem;I)Z

    move-result p1

    if-nez p1, :cond_7

    .line 476
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getStateManager()Lcom/zui/gallery/app/StateManager;

    move-result-object p1

    const-class p2, Lcom/zui/gallery/app/SinglePhotoPage;

    const/4 p3, 0x2

    invoke-virtual {p1, p2, p3, v1}, Lcom/zui/gallery/app/StateManager;->startStateForResult(Ljava/lang/Class;ILandroid/os/Bundle;)V

    :cond_7
    :goto_0
    return-void
.end method

.method private prepareAnimationBackToFilmstrip(I)V
    .locals 3

    .line 931
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->mAlbumDataAdapter:Lcom/zui/gallery/app/AlbumDataLoader;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/zui/gallery/app/AlbumDataLoader;->isActive(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 933
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->mAlbumDataAdapter:Lcom/zui/gallery/app/AlbumDataLoader;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/app/AlbumDataLoader;->get(I)Lcom/zui/gallery/data/MediaItem;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 936
    :cond_1
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getTransitionStore()Lcom/zui/gallery/app/TransitionStore;

    move-result-object v0

    .line 937
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "index-hint"

    invoke-virtual {v0, v2, v1}, Lcom/zui/gallery/app/TransitionStore;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 938
    iget-object v1, p0, Lcom/zui/gallery/app/AlbumPage;->mSlotView:Lcom/zui/gallery/ui/SlotView;

    iget-object v2, p0, Lcom/zui/gallery/app/AlbumPage;->mRootPane:Lcom/zui/gallery/ui/GLView;

    .line 939
    invoke-virtual {v1, p1, v2}, Lcom/zui/gallery/ui/SlotView;->getSlotRect(ILcom/zui/gallery/ui/GLView;)Landroid/graphics/Rect;

    move-result-object p1

    const-string v1, "open-animation-rect"

    .line 938
    invoke-virtual {v0, v1, p1}, Lcom/zui/gallery/app/TransitionStore;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private removeGetContenBottomView()V
    .locals 2

    .line 1989
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->isGetMultContent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1990
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getRootView()Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1991
    iget-object v1, p0, Lcom/zui/gallery/app/AlbumPage;->getContentBottomConatiner:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    .line 1992
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private selectMode(I)V
    .locals 1

    .line 1027
    invoke-virtual {p0}, Lcom/zui/gallery/app/AlbumPage;->isMultipleChoice()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 1045
    invoke-direct {p0, p1}, Lcom/zui/gallery/app/AlbumPage;->updateGetContentBottomView(I)V

    goto :goto_0

    .line 1041
    :cond_2
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/SelectionManager;->getSelectedCount()I

    move-result p1

    .line 1042
    invoke-direct {p0, p1}, Lcom/zui/gallery/app/AlbumPage;->updateGetContentBottomView(I)V

    goto :goto_0

    .line 1037
    :cond_3
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumPage;->mActionModeHandler:Lcom/zui/gallery/ui/ActionModeHandler;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/ActionModeHandler;->finishActionMode()V

    .line 1038
    invoke-direct {p0}, Lcom/zui/gallery/app/AlbumPage;->onUpPressed()V

    goto :goto_0

    .line 1032
    :cond_4
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumPage;->mActionModeHandler:Lcom/zui/gallery/ui/ActionModeHandler;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/ActionModeHandler;->startActionMode()V

    .line 1034
    invoke-direct {p0}, Lcom/zui/gallery/app/AlbumPage;->alreadySelected()V

    :goto_0
    return-void
.end method

.method private setLoadingBit(I)V
    .locals 1

    .line 1152
    iget v0, p0, Lcom/zui/gallery/app/AlbumPage;->mLoadingBits:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/zui/gallery/app/AlbumPage;->mLoadingBits:I

    return-void
.end method

.method private showFloatDialog()V
    .locals 15

    .line 2076
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->longTapItem:Lcom/zui/gallery/data/MediaItem;

    if-eqz v0, :cond_f

    .line 2077
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 2078
    iget-object v2, p0, Lcom/zui/gallery/app/AlbumPage;->mSlotView:Lcom/zui/gallery/ui/SlotView;

    iget-object v3, p0, Lcom/zui/gallery/app/AlbumPage;->longTapItem:Lcom/zui/gallery/data/MediaItem;

    invoke-virtual {v3}, Lcom/zui/gallery/data/MediaItem;->getPath()Lcom/zui/gallery/data/Path;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/zui/gallery/ui/SlotView;->setLongTapItemPath(Lcom/zui/gallery/data/Path;)V

    .line 2079
    iget-object v2, p0, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 2082
    iget-object v3, p0, Lcom/zui/gallery/app/AlbumPage;->longTapItem:Lcom/zui/gallery/data/MediaItem;

    invoke-direct {p0, v3}, Lcom/zui/gallery/app/AlbumPage;->getVideoMediaTypeIfNeed(Lcom/zui/gallery/data/MediaItem;)I

    move-result v3

    .line 2083
    iget-object v4, p0, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/zui/gallery/app/AlbumPage;->longTapItem:Lcom/zui/gallery/data/MediaItem;

    invoke-virtual {v5}, Lcom/zui/gallery/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/zui/gallery/data/GroupBucketHelper;->isExistInFavoriteGroup(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v4

    .line 2085
    iget-object v5, p0, Lcom/zui/gallery/app/AlbumPage;->longTapItem:Lcom/zui/gallery/data/MediaItem;

    instance-of v6, v5, Lcom/zui/gallery/data/CloudImage;

    const v7, 0x7f1000b9

    const/4 v8, 0x1

    if-eqz v6, :cond_0

    new-array v3, v8, [Ljava/lang/String;

    .line 2086
    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v1

    .line 2087
    new-instance v1, Lzui/app/FloatDialog$Builder;

    iget-object v2, p0, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-direct {v1, v2}, Lzui/app/FloatDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/zui/gallery/app/AlbumPage$15;

    invoke-direct {v2, p0}, Lcom/zui/gallery/app/AlbumPage$15;-><init>(Lcom/zui/gallery/app/AlbumPage;)V

    invoke-virtual {v1, v3, v2}, Lzui/app/FloatDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lzui/app/FloatDialog$Builder;

    move-result-object v1

    .line 2098
    invoke-virtual {v1, v0}, Lzui/app/FloatDialog$Builder;->setMaskWindowBackground(Landroid/graphics/drawable/Drawable;)Lzui/app/FloatDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lzui/app/FloatDialog$Builder;->create()Lzui/app/FloatDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->mFloatDialog:Lzui/app/FloatDialog;

    goto/16 :goto_a

    :cond_0
    const v6, 0x7f1000fa

    const/4 v9, 0x4

    const v10, 0x7f100178

    const v11, 0x7f10020c

    const v12, 0x7f100254

    const/4 v13, 0x3

    const/4 v14, 0x2

    if-ne v3, v14, :cond_8

    .line 2100
    invoke-static {v5}, Lcom/zui/gallery/util/GalleryUtils;->isDNGImage(Lcom/zui/gallery/data/MediaItem;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/zui/gallery/app/AlbumPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {v3}, Lcom/zui/gallery/ui/SelectionManager;->isCameraAlbum()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/zui/gallery/app/AlbumPage;->longTapItem:Lcom/zui/gallery/data/MediaItem;

    iget-boolean v3, v3, Lcom/zui/gallery/data/MediaItem;->isContinuousCover:Z

    if-nez v3, :cond_3

    :cond_1
    iget-object v3, p0, Lcom/zui/gallery/app/AlbumPage;->longTapItem:Lcom/zui/gallery/data/MediaItem;

    invoke-static {v3}, Lcom/zui/gallery/util/GalleryUtils;->isGifImage(Lcom/zui/gallery/data/MediaItem;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v3, v1

    goto :goto_1

    :cond_3
    :goto_0
    move v3, v8

    .line 2101
    :goto_1
    iget-object v5, p0, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v5}, Lcom/zui/gallery/app/AbstractGalleryActivity;->isInMultiWindowMode()Z

    move-result v5

    if-nez v5, :cond_6

    if-eqz v3, :cond_4

    goto :goto_3

    :cond_4
    new-array v5, v9, [Ljava/lang/String;

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {v2, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v8

    if-nez v4, :cond_5

    invoke-virtual {v2, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_5
    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_2
    aput-object v1, v5, v14

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v13

    goto :goto_5

    :cond_6
    :goto_3
    new-array v5, v13, [Ljava/lang/String;

    invoke-virtual {v2, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    if-nez v4, :cond_7

    invoke-virtual {v2, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_7
    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_4
    aput-object v1, v5, v8

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v14

    .line 2102
    :goto_5
    new-instance v1, Lzui/app/FloatDialog$Builder;

    iget-object v2, p0, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-direct {v1, v2}, Lzui/app/FloatDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/zui/gallery/app/AlbumPage$16;

    invoke-direct {v2, p0, v3, v4}, Lcom/zui/gallery/app/AlbumPage$16;-><init>(Lcom/zui/gallery/app/AlbumPage;ZZ)V

    invoke-virtual {v1, v5, v2}, Lzui/app/FloatDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lzui/app/FloatDialog$Builder;

    move-result-object v1

    .line 2150
    invoke-virtual {v1, v0}, Lzui/app/FloatDialog$Builder;->setMaskWindowBackground(Landroid/graphics/drawable/Drawable;)Lzui/app/FloatDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lzui/app/FloatDialog$Builder;->create()Lzui/app/FloatDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->mFloatDialog:Lzui/app/FloatDialog;

    goto/16 :goto_a

    .line 2151
    :cond_8
    invoke-static {v3}, Lcom/zui/gallery/util/GalleryUtils;->canVideoEditType(I)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 2152
    iget-object v3, p0, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/zui/gallery/app/AbstractGalleryActivity;->isInMultiWindowMode()Z

    move-result v3

    if-eqz v3, :cond_a

    new-array v3, v13, [Ljava/lang/String;

    invoke-virtual {v2, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v1

    if-nez v4, :cond_9

    invoke-virtual {v2, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    :cond_9
    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_6
    aput-object v1, v3, v8

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v14

    goto :goto_8

    :cond_a
    new-array v3, v9, [Ljava/lang/String;

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v1

    invoke-virtual {v2, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v8

    if-nez v4, :cond_b

    invoke-virtual {v2, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_7

    :cond_b
    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_7
    aput-object v1, v3, v14

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v13

    .line 2154
    :goto_8
    new-instance v1, Lzui/app/FloatDialog$Builder;

    iget-object v2, p0, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-direct {v1, v2}, Lzui/app/FloatDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/zui/gallery/app/AlbumPage$17;

    invoke-direct {v2, p0, v4}, Lcom/zui/gallery/app/AlbumPage$17;-><init>(Lcom/zui/gallery/app/AlbumPage;Z)V

    invoke-virtual {v1, v3, v2}, Lzui/app/FloatDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lzui/app/FloatDialog$Builder;

    move-result-object v1

    .line 2190
    invoke-virtual {v1, v0}, Lzui/app/FloatDialog$Builder;->setMaskWindowBackground(Landroid/graphics/drawable/Drawable;)Lzui/app/FloatDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lzui/app/FloatDialog$Builder;->create()Lzui/app/FloatDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->mFloatDialog:Lzui/app/FloatDialog;

    goto :goto_a

    :cond_c
    new-array v3, v13, [Ljava/lang/String;

    .line 2192
    invoke-virtual {v2, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v1

    if-nez v4, :cond_d

    invoke-virtual {v2, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_9

    :cond_d
    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_9
    aput-object v1, v3, v8

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v14

    .line 2195
    new-instance v1, Lzui/app/FloatDialog$Builder;

    iget-object v2, p0, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-direct {v1, v2}, Lzui/app/FloatDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/zui/gallery/app/AlbumPage$18;

    invoke-direct {v2, p0, v4}, Lcom/zui/gallery/app/AlbumPage$18;-><init>(Lcom/zui/gallery/app/AlbumPage;Z)V

    invoke-virtual {v1, v3, v2}, Lzui/app/FloatDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lzui/app/FloatDialog$Builder;

    move-result-object v1

    .line 2219
    invoke-virtual {v1, v0}, Lzui/app/FloatDialog$Builder;->setMaskWindowBackground(Landroid/graphics/drawable/Drawable;)Lzui/app/FloatDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lzui/app/FloatDialog$Builder;->create()Lzui/app/FloatDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->mFloatDialog:Lzui/app/FloatDialog;

    .line 2221
    :goto_a
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->mFloatDialog:Lzui/app/FloatDialog;

    new-instance v1, Lcom/zui/gallery/app/AlbumPage$19;

    invoke-direct {v1, p0}, Lcom/zui/gallery/app/AlbumPage$19;-><init>(Lcom/zui/gallery/app/AlbumPage;)V

    invoke-virtual {v0, v1}, Lzui/app/FloatDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 2229
    invoke-direct {p0}, Lcom/zui/gallery/app/AlbumPage;->isFloatDialogShowing()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2230
    invoke-direct {p0}, Lcom/zui/gallery/app/AlbumPage;->closeFloatDialog()V

    .line 2232
    :cond_e
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->longTapItemAbslateRect:Landroid/graphics/Rect;

    .line 2233
    iget-object v1, p0, Lcom/zui/gallery/app/AlbumPage;->mFloatDialog:Lzui/app/FloatDialog;

    invoke-virtual {v1, v0}, Lzui/app/FloatDialog;->showAtLocation(Landroid/graphics/Rect;)V

    :cond_f
    return-void
.end method

.method private showSyncErrorIfNecessary(Z)V
    .locals 2

    .line 1144
    iget v0, p0, Lcom/zui/gallery/app/AlbumPage;->mLoadingBits:I

    if-nez v0, :cond_1

    iget v0, p0, Lcom/zui/gallery/app/AlbumPage;->mSyncResult:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/zui/gallery/app/AlbumPage;->mIsActive:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/zui/gallery/app/AlbumPage;->mAlbumDataAdapter:Lcom/zui/gallery/app/AlbumDataLoader;

    .line 1145
    invoke-virtual {p1}, Lcom/zui/gallery/app/AlbumDataLoader;->size()I

    move-result p1

    if-nez p1, :cond_1

    .line 1146
    :cond_0
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const v0, 0x7f10027c

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 1147
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_1
    return-void
.end method

.method private startAddToPrivacyGroup(Ljava/lang/String;Lcom/zui/gallery/data/MediaItem;)V
    .locals 2

    const-string v0, "privatekey"

    const-string/jumbo v1, "startAddToPrivacyGroup is called"

    .line 1505
    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1506
    invoke-virtual {p2}, Lcom/zui/gallery/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object p2

    const-string v0, "mp4"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    .line 1507
    invoke-virtual {p0}, Lcom/zui/gallery/app/AlbumPage;->showLoadingDialog()V

    .line 1508
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/zui/gallery/app/AlbumPage$8;

    invoke-direct {v1, p0, p1, p2}, Lcom/zui/gallery/app/AlbumPage$8;-><init>(Lcom/zui/gallery/app/AlbumPage;Ljava/lang/String;Z)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1514
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private switchToFilmstrip()V
    .locals 2

    .line 943
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->mAlbumDataAdapter:Lcom/zui/gallery/app/AlbumDataLoader;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AlbumDataLoader;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    return-void

    .line 945
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->mSlotView:Lcom/zui/gallery/ui/SlotView;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/SlotView;->getVisibleStart()I

    move-result v0

    .line 946
    invoke-direct {p0, v0}, Lcom/zui/gallery/app/AlbumPage;->prepareAnimationBackToFilmstrip(I)V

    .line 947
    iget-boolean v0, p0, Lcom/zui/gallery/app/AlbumPage;->mLaunchedFromPhotoPage:Z

    if-eqz v0, :cond_1

    .line 948
    invoke-virtual {p0}, Lcom/zui/gallery/app/AlbumPage;->onBackPressed()V

    :cond_1
    return-void
.end method

.method private unUpdateViewMargin()V
    .locals 2

    .line 1909
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->isPad()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1910
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const v1, 0x7f060348

    invoke-virtual {v0, v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getDimens(I)I

    move-result v0

    .line 1911
    iget-object v1, p0, Lcom/zui/gallery/app/AlbumPage;->titleBarRightContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1912
    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 1913
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->titleBarRightContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private updateGetContentBottomView(I)V
    .locals 4

    .line 2015
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->getContentBottomConatiner:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->getContentTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 2016
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getGetMaxContent()I

    move-result v0

    const v1, 0x7f1000e8

    if-lez p1, :cond_0

    if-gt p1, v0, :cond_0

    .line 2018
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->getContentBottomConatiner:Landroid/widget/LinearLayout;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 2019
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v3, v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2020
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->getContentTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2021
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumPage;->mActionModeHandler:Lcom/zui/gallery/ui/ActionModeHandler;

    invoke-virtual {p1, v2}, Lcom/zui/gallery/ui/ActionModeHandler;->updateInfo(Z)V

    goto :goto_0

    .line 2023
    :cond_0
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumPage;->getContentBottomConatiner:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 2024
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumPage;->getContentTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    .line 2025
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumPage;->mActionModeHandler:Lcom/zui/gallery/ui/ActionModeHandler;

    invoke-virtual {p1, v0}, Lcom/zui/gallery/ui/ActionModeHandler;->updateInfo(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateGetContentViewHeight()V
    .locals 3

    .line 1997
    invoke-virtual {p0}, Lcom/zui/gallery/app/AlbumPage;->isMultipleChoice()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2000
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->getContentBottomConatiner:Landroid/widget/LinearLayout;

    if-nez v0, :cond_1

    return-void

    .line 2003
    :cond_1
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 2004
    iget-object v1, p0, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const v2, 0x7f060307

    invoke-virtual {v1, v2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getDimens(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    const/16 v1, 0xc

    .line 2005
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 2006
    iget-object v1, p0, Lcom/zui/gallery/app/AlbumPage;->getContentBottomConatiner:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2007
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    iget-object v1, p0, Lcom/zui/gallery/app/AlbumPage;->getContentBottomConatiner:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->setBottomMargin(Landroid/view/View;)V

    return-void
.end method

.method private updateHeadRoot()V
    .locals 6

    .line 1740
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-static {v0}, Lcom/zui/gallery/util/DeviceTypeUtils;->isWorkingMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 1741
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getStatusBarHeight()I

    move-result v0

    .line 1742
    :goto_0
    iget-object v1, p0, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06004f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 1743
    iget-object v2, p0, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060087

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    .line 1744
    iget-object v3, p0, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getHeadRoot()Landroid/view/View;

    move-result-object v3

    .line 1745
    iget-object v4, p0, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getTitleBar()Landroid/view/View;

    move-result-object v4

    .line 1746
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    add-int/2addr v0, v1

    add-int/2addr v0, v2

    .line 1747
    iput v0, v5, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 1748
    invoke-virtual {v3, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1749
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    add-int/2addr v1, v2

    .line 1750
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 v1, 0x11

    .line 1751
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1752
    invoke-virtual {v4, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1753
    invoke-direct {p0}, Lcom/zui/gallery/app/AlbumPage;->updateGetContentViewHeight()V

    return-void
.end method

.method private updateTitleBar()V
    .locals 5

    .line 1777
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->settingView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1778
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/zui/gallery/app/AlbumPage;->mGetContent:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1881
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/zui/gallery/app/AlbumPage;->mGetContent:Z

    if-nez v0, :cond_c

    .line 1882
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->mActionModeHandler:Lcom/zui/gallery/ui/ActionModeHandler;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/ActionModeHandler;->updateSupportedOperation()V

    goto/16 :goto_1

    .line 1779
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->subTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1780
    invoke-virtual {p0}, Lcom/zui/gallery/app/AlbumPage;->isMultipleChoice()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1781
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->titleTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/zui/gallery/app/AlbumPage;->animation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1782
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->titleTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/zui/gallery/app/AlbumPage;->mMediaSet:Lcom/zui/gallery/data/MediaSet;

    invoke-virtual {v2}, Lcom/zui/gallery/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1785
    :cond_2
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-static {v0}, Lcom/zui/gallery/util/DeviceTypeUtils;->isPad(Landroid/content/Context;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    const-string v0, "AlbumPage"

    const-string v3, "isPad update title bar textSize "

    .line 1786
    invoke-static {v0, v3}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1787
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->titleTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060096

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1789
    :cond_3
    invoke-direct {p0}, Lcom/zui/gallery/app/AlbumPage;->updateViewMargin()V

    .line 1790
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->rightNewFolderImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    .line 1791
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1793
    :cond_4
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->rightSelectImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    .line 1794
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1797
    :cond_5
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->isThirdAppCall()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1798
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->titleBarLeftContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_6

    .line 1799
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->leftBackUpImageView:Landroid/widget/ImageView;

    const v3, 0x7f07005a

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1800
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->leftBackUpImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1801
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->leftTextView:Landroid/widget/TextView;

    const v3, 0x7f100068

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 1802
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->leftTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1803
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->titleBarLeftContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1804
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->titleBarLeftContainer:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/zui/gallery/app/AlbumPage$11;

    invoke-direct {v1, p0}, Lcom/zui/gallery/app/AlbumPage$11;-><init>(Lcom/zui/gallery/app/AlbumPage;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1821
    :cond_6
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->titleBarRightContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_c

    .line 1822
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->rightTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_7

    .line 1823
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1825
    invoke-virtual {p0}, Lcom/zui/gallery/app/AlbumPage;->isMultipleChoice()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1826
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->rightTextView:Landroid/widget/TextView;

    const v1, 0x7f10027f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1829
    :cond_7
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->titleBarRightContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1830
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->titleBarRightContainer:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/zui/gallery/app/AlbumPage$12;

    invoke-direct {v1, p0}, Lcom/zui/gallery/app/AlbumPage$12;-><init>(Lcom/zui/gallery/app/AlbumPage;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 1855
    :cond_8
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->titleBarLeftContainer:Landroid/widget/LinearLayout;

    const/4 v3, 0x1

    if-eqz v0, :cond_b

    .line 1856
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->leftTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    .line 1857
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1859
    :cond_9
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->leftBackUpImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_a

    const v1, 0x7f07008b

    .line 1861
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1863
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->leftBackUpImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1865
    :cond_a
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->titleBarLeftContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 1866
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->titleBarLeftContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1867
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->titleBarLeftContainer:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/zui/gallery/app/AlbumPage$13;

    invoke-direct {v1, p0}, Lcom/zui/gallery/app/AlbumPage$13;-><init>(Lcom/zui/gallery/app/AlbumPage;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1874
    :cond_b
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->titleBarRightContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_c

    .line 1875
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1876
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->titleBarRightContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 1877
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->titleBarRightContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 1878
    invoke-direct {p0}, Lcom/zui/gallery/app/AlbumPage;->updateTitleBarRightView()V

    .line 1885
    :cond_c
    :goto_1
    invoke-direct {p0}, Lcom/zui/gallery/app/AlbumPage;->updateHeadRoot()V

    .line 1886
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zui/gallery/app/AlbumPage;->updateTitleBarVisibility(Landroid/content/res/Configuration;)V

    return-void
.end method

.method private updateTitleBarRightView()V
    .locals 6

    .line 1591
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->titleBarRightContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_9

    .line 1592
    iget-boolean v0, p0, Lcom/zui/gallery/app/AlbumPage;->mGetContent:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->isThirdAppCall()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    .line 1596
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateTitleBarRightVie11w:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/gallery/app/AlbumPage;->mMediaSet:Lcom/zui/gallery/data/MediaSet;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "tianlianglaa"

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1597
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->mMediaSet:Lcom/zui/gallery/data/MediaSet;

    if-eqz v0, :cond_5

    .line 1598
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateTitleBarRightVie11w mMediaSet.isGroupAlbum():"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/zui/gallery/app/AlbumPage;->mMediaSet:Lcom/zui/gallery/data/MediaSet;

    invoke-virtual {v4}, Lcom/zui/gallery/data/MediaSet;->isGroupAlbum()Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " !isSystemGroupAlbum():"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1599
    invoke-direct {p0}, Lcom/zui/gallery/app/AlbumPage;->isSystemGroupAlbum()Z

    move-result v4

    xor-int/2addr v4, v2

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " (rightTextView != null):"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/zui/gallery/app/AlbumPage;->rightTextView:Landroid/widget/TextView;

    if-eqz v4, :cond_2

    move v4, v2

    goto :goto_1

    :cond_2
    move v4, v3

    :goto_1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1598
    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1601
    invoke-direct {p0}, Lcom/zui/gallery/app/AlbumPage;->isSystemGroupAlbum()Z

    move-result v0

    const v4, 0x7f100235

    if-nez v0, :cond_4

    .line 1602
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->rightTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    .line 1603
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateTitleBarRightView:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/zui/gallery/app/AlbumPage;->mMediaSet:Lcom/zui/gallery/data/MediaSet;

    invoke-virtual {v5}, Lcom/zui/gallery/data/MediaSet;->getMediaItemCount()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1605
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->mMediaSet:Lcom/zui/gallery/data/MediaSet;

    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaSet;->getMediaItemCount()I

    move-result v0

    if-nez v0, :cond_3

    .line 1606
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->rightTextView:Landroid/widget/TextView;

    const v1, 0x7f10002b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    .line 1609
    :cond_3
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->rightTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 1614
    :cond_4
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->rightTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    .line 1615
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    :cond_5
    :goto_2
    move v2, v3

    .line 1620
    :goto_3
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->rightTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    .line 1621
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1623
    :cond_6
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->mMediaSet:Lcom/zui/gallery/data/MediaSet;

    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaSet;->getSystemId()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_7

    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->mMediaSet:Lcom/zui/gallery/data/MediaSet;

    .line 1624
    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaSet;->getSystemId()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_8

    .line 1625
    :cond_7
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->rightTextView:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1628
    :cond_8
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->titleBarRightContainer:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/zui/gallery/app/AlbumPage$10;

    invoke-direct {v1, p0, v2}, Lcom/zui/gallery/app/AlbumPage$10;-><init>(Lcom/zui/gallery/app/AlbumPage;Z)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    nop

    :cond_9
    :goto_4
    return-void
.end method

.method private updateViewMargin()V
    .locals 7

    .line 1891
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->isLandScreen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1893
    iget-object v1, p0, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    iget-object v2, p0, Lcom/zui/gallery/app/AlbumPage;->titleTextView:Landroid/widget/TextView;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/zui/gallery/util/GalleryUtils;->setViewMargin(Landroid/content/Context;Landroid/view/View;IIII)V

    goto :goto_0

    .line 1896
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->titleTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const v2, 0x7f05002e

    invoke-virtual {v1, v2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1900
    :goto_0
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->isPad()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1901
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const v1, 0x7f06005d

    invoke-virtual {v0, v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getDimens(I)I

    move-result v0

    .line 1902
    iget-object v1, p0, Lcom/zui/gallery/app/AlbumPage;->titleBarRightContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1903
    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 1904
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->titleBarRightContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public dismissLoadingDialog()V
    .locals 1

    .line 1527
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->mProgressDialogX:Lzui/app/ProgressDialogX;

    if-eqz v0, :cond_0

    .line 1528
    invoke-virtual {v0}, Lzui/app/ProgressDialogX;->dismiss()V

    :cond_0
    return-void
.end method

.method public freeResources()V
    .locals 0

    return-void
.end method

.method protected getBackgroundColorId(Landroid/os/Bundle;)I
    .locals 0

    const p1, 0x7f0500b3

    return p1
.end method

.method protected getItemRect(Lcom/zui/gallery/data/Path;)Landroid/graphics/Rect;
    .locals 0

    .line 705
    invoke-direct {p0, p1}, Lcom/zui/gallery/app/AlbumPage;->getItemIndex(Lcom/zui/gallery/data/Path;)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 710
    :cond_0
    invoke-direct {p0, p1}, Lcom/zui/gallery/app/AlbumPage;->getItemRect(I)Landroid/graphics/Rect;

    move-result-object p1

    return-object p1
.end method

.method public isMultipleChoice()Z
    .locals 2

    .line 1110
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->isWidget()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    .line 1111
    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->isGetMultContent()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    .line 1112
    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getGetMaxContent()I

    move-result v0

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public synthetic lambda$new$0$AlbumPage()V
    .locals 3

    const-string v0, "AlbumPage"

    const-string v1, "onPatpat"

    .line 240
    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    iget-object v1, p0, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getDataManager()Lcom/zui/gallery/data/DataManager;

    move-result-object v1

    iget-object v2, p0, Lcom/zui/gallery/app/AlbumPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-static {v0, v1, v2}, Lcom/zui/lenovoone/LenovoOneHelper;->sendBatch(Landroid/app/Activity;Lcom/zui/gallery/data/DataManager;Lcom/zui/gallery/ui/SelectionManager;)V

    :cond_0
    return-void
.end method

.method public needShowEmptyImage()Z
    .locals 1

    .line 1202
    iget-boolean v0, p0, Lcom/zui/gallery/app/AlbumPage;->mShowedEmptyToastForSelf:Z

    return v0
.end method

.method protected onBackPressed()V
    .locals 3

    const-string v0, "AlbumPage"

    const-string v1, "---AlbumPage---onBackPressed---"

    .line 319
    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 321
    iget-boolean v0, p0, Lcom/zui/gallery/app/AlbumPage;->mGetContent:Z

    if-eqz v0, :cond_1

    .line 322
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/SelectionManager;->getSelectedCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/SelectionManager;->reEnterSelectionMode()V

    const/4 v0, 0x0

    .line 324
    invoke-direct {p0, v0}, Lcom/zui/gallery/app/AlbumPage;->updateGetContentBottomView(I)V

    goto :goto_1

    .line 326
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/SelectionManager;->leaveSelectionMode()V

    .line 327
    invoke-direct {p0}, Lcom/zui/gallery/app/AlbumPage;->onUpPressed()V

    goto :goto_1

    .line 330
    :cond_1
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/SelectionManager;->leaveSelectionMode()V

    goto :goto_1

    .line 333
    :cond_2
    iget-boolean v0, p0, Lcom/zui/gallery/app/AlbumPage;->mLaunchedFromPhotoPage:Z

    if-eqz v0, :cond_3

    .line 334
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getTransitionStore()Lcom/zui/gallery/app/TransitionStore;

    move-result-object v0

    const/4 v1, 0x2

    .line 336
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "albumpage-transition"

    .line 334
    invoke-virtual {v0, v2, v1}, Lcom/zui/gallery/app/TransitionStore;->putIfNotPresent(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 341
    :cond_3
    iget-boolean v0, p0, Lcom/zui/gallery/app/AlbumPage;->mInCameraApp:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/zui/gallery/app/AlbumPage;->isSecurityLauncher:Z

    if-eqz v0, :cond_4

    goto :goto_0

    .line 344
    :cond_4
    invoke-direct {p0}, Lcom/zui/gallery/app/AlbumPage;->onUpPressed()V

    goto :goto_1

    .line 342
    :cond_5
    :goto_0
    invoke-super {p0}, Lcom/zui/gallery/app/ActivityState;->onBackPressed()V

    :goto_1
    return-void
.end method

.method protected onBottombarClicked(I)V
    .locals 10

    .line 1251
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/zui/gallery/app/AlbumPage;->lastBottomBarClickedTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x2bc

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    return-void

    .line 1254
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zui/gallery/app/AlbumPage;->lastBottomBarClickedTime:J

    const v0, 0x7f0800a7

    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_5

    .line 1435
    :sswitch_0
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumPage;->mActionModeHandler:Lcom/zui/gallery/ui/ActionModeHandler;

    const v0, 0x7f0800ac

    invoke-virtual {p1, v0}, Lcom/zui/gallery/ui/ActionModeHandler;->OnBottomBarButtonClicked(I)V

    goto/16 :goto_5

    .line 1354
    :sswitch_1
    invoke-direct {p0}, Lcom/zui/gallery/app/AlbumPage;->isPanoAlbum()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1355
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/SelectionManager;->getSelectedCount()I

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_5

    .line 1358
    :cond_1
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumPage;->mActionModeHandler:Lcom/zui/gallery/ui/ActionModeHandler;

    invoke-virtual {p1, v0}, Lcom/zui/gallery/ui/ActionModeHandler;->OnBottomBarButtonClicked(I)V

    return-void

    .line 1363
    :cond_2
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {p1, v1}, Lcom/zui/gallery/ui/SelectionManager;->getSelected(Z)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 1364
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    goto/16 :goto_1

    .line 1366
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1367
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/gallery/data/Path;

    .line 1368
    iget-object v3, p0, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getDataManager()Lcom/zui/gallery/data/DataManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/zui/gallery/data/DataManager;->getMediaObject(Lcom/zui/gallery/data/Path;)Lcom/zui/gallery/data/MediaObject;

    move-result-object v2

    .line 1369
    instance-of v3, v2, Lcom/zui/gallery/data/MediaSet;

    if-eqz v3, :cond_5

    .line 1370
    check-cast v2, Lcom/zui/gallery/data/MediaSet;

    .line 1371
    invoke-virtual {v2}, Lcom/zui/gallery/data/MediaSet;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1372
    :cond_5
    instance-of v3, v2, Lcom/zui/gallery/data/MediaItem;

    if-eqz v3, :cond_4

    .line 1373
    check-cast v2, Lcom/zui/gallery/data/MediaItem;

    .line 1374
    invoke-virtual {v2}, Lcom/zui/gallery/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1379
    :cond_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz p1, :cond_7

    .line 1381
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "count2 ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " video paths size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AlbumPage"

    invoke-static {v3, v2}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1384
    :cond_7
    iget-object v2, p0, Lcom/zui/gallery/app/AlbumPage;->mActionModeHandler:Lcom/zui/gallery/ui/ActionModeHandler;

    invoke-virtual {v2}, Lcom/zui/gallery/ui/ActionModeHandler;->getRemovToastInfo()Ljava/lang/String;

    move-result-object v2

    .line 1386
    iget-object v3, p0, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-static {v3}, Lcom/zui/gallery/util/GalleryUtils;->getActionDialogBuilder(Landroid/app/Activity;)Lzui/app/ActionDialog$Builder;

    move-result-object v3

    .line 1387
    invoke-virtual {v3, v2}, Lzui/app/ActionDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lzui/app/ActionDialog$Builder;

    move-result-object v2

    const v3, 0x7f1000b9

    new-instance v4, Lcom/zui/gallery/app/AlbumPage$7;

    invoke-direct {v4, p0, v1, v0, p1}, Lcom/zui/gallery/app/AlbumPage$7;-><init>(Lcom/zui/gallery/app/AlbumPage;ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1388
    invoke-virtual {v2, v3, v4}, Lzui/app/ActionDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lzui/app/ActionDialog$Builder;

    move-result-object p1

    const v0, 0x7f100068

    new-instance v1, Lcom/zui/gallery/app/AlbumPage$6;

    invoke-direct {v1, p0}, Lcom/zui/gallery/app/AlbumPage$6;-><init>(Lcom/zui/gallery/app/AlbumPage;)V

    .line 1421
    invoke-virtual {p1, v0, v1}, Lzui/app/ActionDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lzui/app/ActionDialog$Builder;

    move-result-object p1

    .line 1428
    invoke-virtual {p1}, Lzui/app/ActionDialog$Builder;->create()Lzui/app/ActionDialog;

    move-result-object p1

    invoke-virtual {p1}, Lzui/app/ActionDialog;->show()V

    goto/16 :goto_5

    :cond_8
    :goto_1
    return-void

    .line 1442
    :sswitch_2
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/SelectionManager;->getSelectedCount()I

    move-result p1

    if-nez p1, :cond_9

    goto/16 :goto_5

    .line 1448
    :cond_9
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/SelectionManager;->getSelectedCount()I

    move-result p1

    const/16 v1, 0xf

    if-gt p1, v1, :cond_a

    .line 1450
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumPage;->mActionModeHandler:Lcom/zui/gallery/ui/ActionModeHandler;

    new-instance v1, Lcom/zui/gallery/app/AlbumPage$DeleteProgressListener;

    iget-object v2, p0, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const-string v3, "DeleteProgress"

    invoke-direct {v1, p0, v2, v3}, Lcom/zui/gallery/app/AlbumPage$DeleteProgressListener;-><init>(Lcom/zui/gallery/app/AlbumPage;Lcom/zui/gallery/app/AbstractGalleryActivity;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/zui/gallery/ui/ActionModeHandler;->setDeleteProgressListener(Lcom/zui/gallery/ui/MenuExecutor$ProgressListener;)V

    .line 1456
    :cond_a
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumPage;->mActionModeHandler:Lcom/zui/gallery/ui/ActionModeHandler;

    invoke-virtual {p1, v0}, Lcom/zui/gallery/ui/ActionModeHandler;->OnBottomBarButtonClicked(I)V

    goto/16 :goto_5

    .line 1274
    :sswitch_3
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "get-group-album"

    .line 1275
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1276
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    .line 1277
    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getDataManager()Lcom/zui/gallery/data/DataManager;

    move-result-object v0

    const/4 v3, 0x7

    .line 1278
    invoke-virtual {v0, v3}, Lcom/zui/gallery/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "media-path"

    .line 1276
    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1279
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {v0, v1}, Lcom/zui/gallery/ui/SelectionManager;->getSelected(Z)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 1281
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_b

    goto/16 :goto_4

    .line 1289
    :cond_b
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1290
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1291
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1292
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_c
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/zui/gallery/data/Path;

    .line 1293
    iget-object v7, p0, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v7}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getDataManager()Lcom/zui/gallery/data/DataManager;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/zui/gallery/data/DataManager;->getMediaObject(Lcom/zui/gallery/data/Path;)Lcom/zui/gallery/data/MediaObject;

    move-result-object v6

    .line 1294
    instance-of v7, v6, Lcom/zui/gallery/data/MediaSet;

    if-eqz v7, :cond_d

    .line 1295
    check-cast v6, Lcom/zui/gallery/data/LocalAlbum;

    .line 1296
    invoke-virtual {v6}, Lcom/zui/gallery/data/LocalAlbum;->getCoverMediaItem()Lcom/zui/gallery/data/MediaItem;

    move-result-object v6

    invoke-virtual {v6}, Lcom/zui/gallery/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v6

    .line 1297
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1299
    :cond_d
    check-cast v6, Lcom/zui/gallery/data/MediaItem;

    .line 1300
    invoke-virtual {v6}, Lcom/zui/gallery/data/MediaItem;->getMediaType()I

    move-result v7

    .line 1301
    instance-of v8, v6, Lcom/zui/gallery/data/CloudImage;

    if-eqz v8, :cond_e

    .line 1302
    check-cast v6, Lcom/zui/gallery/data/CloudImage;

    invoke-virtual {v6}, Lcom/zui/gallery/data/CloudImage;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_e
    const/4 v8, 0x2

    if-ne v7, v8, :cond_f

    .line 1304
    invoke-virtual {v6}, Lcom/zui/gallery/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1305
    :cond_f
    invoke-static {v7}, Lcom/zui/gallery/data/MediaObject;->isVideoType(I)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 1306
    invoke-virtual {v6}, Lcom/zui/gallery/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v6

    .line 1307
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "-"

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1308
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1318
    :cond_10
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/2addr v0, v6

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/2addr v0, v6

    .line 1319
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    const/4 v7, 0x0

    if-nez v6, :cond_11

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_12

    :cond_11
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_13

    .line 1320
    :cond_12
    iget-object v6, p0, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const v8, 0x7f10002f

    new-array v9, v2, [Ljava/lang/Object;

    .line 1321
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v9, v1

    invoke-virtual {v6, v8, v9}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 1322
    :cond_13
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_14

    .line 1323
    iget-object v6, p0, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const v8, 0x7f10002e

    new-array v9, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v9, v1

    invoke-virtual {v6, v8, v9}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 1324
    :cond_14
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_15

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_15

    .line 1325
    iget-object v6, p0, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const v8, 0x7f100035

    new-array v9, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v9, v1

    invoke-virtual {v6, v8, v9}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_15
    move-object v0, v7

    .line 1327
    :goto_3
    sget-object v6, Lcom/zui/gallery/app/AlbumSetAddPage;->ADD_TO_GROUP_SUBTITLE:Ljava/lang/String;

    invoke-virtual {p1, v6, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "media-image-paths"

    .line 1329
    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v0, "media-video-paths"

    .line 1330
    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v0, "cloud-item-ids"

    .line 1331
    invoke-virtual {p1, v0, v5}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1333
    sget-object v0, Lcom/zui/gallery/app/AlbumSetAddPage;->IS_ALBUMPAGE_CALL:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1336
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1337
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/SelectionManager;->leaveSelectionMode()V

    .line 1339
    :cond_16
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0, v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->showTab(Z)V

    .line 1341
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getStateManager()Lcom/zui/gallery/app/StateManager;

    move-result-object v0

    const-class v1, Lcom/zui/gallery/app/AlbumSetAddPage;

    invoke-virtual {v0, v1, p1}, Lcom/zui/gallery/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 1343
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumPage;->titleBarRightContainer:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_1f

    .line 1344
    invoke-virtual {p1, v7}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_5

    .line 1282
    :cond_17
    :goto_4
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/SelectionManager;->isLocalGroupAlbum()Z

    move-result p1

    if-eqz p1, :cond_18

    .line 1283
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/SelectionManager;->leaveSelectionMode()V

    :cond_18
    return-void

    .line 1258
    :sswitch_4
    invoke-direct {p0}, Lcom/zui/gallery/app/AlbumPage;->addPhoto()V

    goto/16 :goto_5

    .line 1460
    :sswitch_5
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {p1, v1}, Lcom/zui/gallery/ui/SelectionManager;->getSelected(Z)Ljava/util/ArrayList;

    move-result-object p1

    if-nez p1, :cond_19

    return-void

    :cond_19
    if-eqz p1, :cond_1a

    .line 1462
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v2, :cond_1a

    .line 1463
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const v1, 0x7f100190

    invoke-virtual {v0, v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 1466
    :cond_1a
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/data/Path;

    .line 1467
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getDataManager()Lcom/zui/gallery/data/DataManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zui/gallery/data/DataManager;->getMediaObject(Lcom/zui/gallery/data/Path;)Lcom/zui/gallery/data/MediaObject;

    move-result-object p1

    .line 1468
    check-cast p1, Lcom/zui/gallery/data/MediaItem;

    iput-object p1, p0, Lcom/zui/gallery/app/AlbumPage;->mCurrentPhoto:Lcom/zui/gallery/data/MediaItem;

    .line 1470
    iget-boolean p1, p1, Lcom/zui/gallery/data/MediaItem;->isContinuousCover:Z

    if-eqz p1, :cond_1b

    iget-object p1, p0, Lcom/zui/gallery/app/AlbumPage;->mCurrentPhoto:Lcom/zui/gallery/data/MediaItem;

    iget p1, p1, Lcom/zui/gallery/data/MediaItem;->continuousCount:I

    if-lez p1, :cond_1b

    .line 1471
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const v1, 0x7f1000a2

    invoke-virtual {v0, v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 1475
    :cond_1b
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumPage;->mCurrentPhoto:Lcom/zui/gallery/data/MediaItem;

    instance-of v0, p1, Lcom/zui/gallery/data/CloudImage;

    if-eqz v0, :cond_1c

    .line 1476
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const v1, 0x7f10008b

    invoke-virtual {v0, v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 1480
    :cond_1c
    invoke-virtual {p1}, Lcom/zui/gallery/data/MediaItem;->getSize()J

    move-result-wide v0

    const-wide/32 v3, 0x1f400000

    cmp-long p1, v0, v3

    if-lez p1, :cond_1d

    .line 1481
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const v1, 0x7f100121

    invoke-virtual {v0, v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 1485
    :cond_1d
    invoke-static {}, Lcom/zui/gallery/privacygroup/KeyStoreUtil;->get()Lcom/zui/gallery/privacygroup/KeyStoreUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/gallery/privacygroup/KeyStoreUtil;->isPrivacyGroupExists()Z

    move-result p1

    const-string v0, "privatekey"

    if-eqz p1, :cond_1e

    invoke-static {}, Lcom/zui/gallery/privacygroup/KeyStoreUtil;->get()Lcom/zui/gallery/privacygroup/KeyStoreUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/gallery/privacygroup/KeyStoreUtil;->isPrivacySpaceOff()Z

    move-result p1

    if-nez p1, :cond_1e

    const-string/jumbo p1, "\u9690\u79c1\u76f8\u518c\u5df2\u5b58\u5728"

    .line 1486
    invoke-static {v0, p1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1488
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumPage;->mCurrentPhoto:Lcom/zui/gallery/data/MediaItem;

    invoke-virtual {p1}, Lcom/zui/gallery/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->mCurrentPhoto:Lcom/zui/gallery/data/MediaItem;

    invoke-direct {p0, p1, v0}, Lcom/zui/gallery/app/AlbumPage;->startAddToPrivacyGroup(Ljava/lang/String;Lcom/zui/gallery/data/MediaItem;)V

    goto :goto_5

    :cond_1e
    const-string/jumbo p1, "\u8fd8\u672a\u521b\u5efa\u8fc7\u9690\u79c1\u76f8\u518c"

    .line 1491
    invoke-static {v0, p1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1492
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.lenovo.privacyspace.verification"

    .line 1493
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1494
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1001fe

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.app.extra.TITLE"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1495
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const/16 v1, 0x22b8

    invoke-virtual {v0, p1, v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_1f
    :goto_5
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f080053 -> :sswitch_5
        0x7f0800a5 -> :sswitch_4
        0x7f0800a6 -> :sswitch_3
        0x7f0800a7 -> :sswitch_2
        0x7f0800aa -> :sswitch_1
        0x7f0800ac -> :sswitch_0
    .end sparse-switch
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 897
    invoke-super {p0, p1}, Lcom/zui/gallery/app/ActivityState;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 898
    invoke-direct {p0}, Lcom/zui/gallery/app/AlbumPage;->initTitleBar()V

    .line 899
    invoke-direct {p0}, Lcom/zui/gallery/app/AlbumPage;->updateTitleBar()V

    .line 900
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-static {p1}, Lcom/zui/gallery/app/Config$AlbumPage;->get(Landroid/content/Context;)Lcom/zui/gallery/app/Config$AlbumPage;

    move-result-object p1

    .line 901
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->mSlotView:Lcom/zui/gallery/ui/SlotView;

    iget-object p1, p1, Lcom/zui/gallery/app/Config$AlbumPage;->slotViewSpec:Lcom/zui/gallery/ui/SlotView$Spec;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/ui/SlotView;->setSlotSpec(Lcom/zui/gallery/ui/SlotView$Spec;)V

    .line 902
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumPage;->mAlbumView:Lcom/zui/gallery/ui/AlbumSlotRenderer;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/AlbumSlotRenderer;->resume()V

    .line 903
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumPage;->mActionModeHandler:Lcom/zui/gallery/ui/ActionModeHandler;

    if-eqz p1, :cond_1

    .line 904
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getEditTitleBar()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Lcom/zui/gallery/ui/ActionModeHandler;->setActionModeView(Landroid/view/ViewGroup;)V

    .line 905
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumPage;->mActionModeHandler:Lcom/zui/gallery/ui/ActionModeHandler;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/ActionModeHandler;->isActionModeIsShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 906
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumPage;->mActionModeHandler:Lcom/zui/gallery/ui/ActionModeHandler;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/ActionModeHandler;->startActionMode()V

    .line 908
    :cond_0
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumPage;->mActionModeHandler:Lcom/zui/gallery/ui/ActionModeHandler;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/ActionModeHandler;->resume()V

    .line 910
    :cond_1
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->isInMultiWindowMode()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 911
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumPage;->mActionModeHandler:Lcom/zui/gallery/ui/ActionModeHandler;

    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->needUpadateTitleTextWidth()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/zui/gallery/ui/ActionModeHandler;->setActionModelTitleMaxLenght(Z)V

    .line 913
    :cond_2
    invoke-virtual {p0}, Lcom/zui/gallery/app/AlbumPage;->isMultipleChoice()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 914
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/SelectionManager;->getSelectedCount()I

    move-result p1

    if-lez p1, :cond_3

    .line 916
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumPage;->mActionModeHandler:Lcom/zui/gallery/ui/ActionModeHandler;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/zui/gallery/ui/ActionModeHandler;->updateInfo(Z)V

    goto :goto_0

    .line 918
    :cond_3
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumPage;->mActionModeHandler:Lcom/zui/gallery/ui/ActionModeHandler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/zui/gallery/ui/ActionModeHandler;->updateInfo(Z)V

    .line 922
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumPage;->titleBarRightContainer:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_5

    .line 923
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getStateManager()Lcom/zui/gallery/app/StateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/gallery/app/StateManager;->getTopState()Lcom/zui/gallery/app/ActivityState;

    move-result-object p1

    instance-of p1, p1, Lcom/zui/gallery/app/AlbumSetAddPage;

    if-eqz p1, :cond_5

    .line 924
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumPage;->titleBarRightContainer:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 2

    .line 631
    invoke-super {p0, p1, p2}, Lcom/zui/gallery/app/ActivityState;->onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 632
    invoke-static {}, Lcom/zui/sdk/lenovoone/manager/LenovoOneManager;->instance()Lcom/zui/sdk/lenovoone/manager/LenovoOneManager;

    move-result-object p2

    const-class v0, Lcom/zui/sdk/service/patpat/ZuiPatpatService;

    invoke-interface {p2, v0}, Lcom/zui/sdk/lenovoone/manager/LenovoOneManager;->service(Ljava/lang/Class;)Lcom/zui/sdk/service/foundation/ZuiService;

    move-result-object p2

    check-cast p2, Lcom/zui/sdk/service/patpat/ZuiPatpatService;

    iput-object p2, p0, Lcom/zui/gallery/app/AlbumPage;->mZuiPatpatService:Lcom/zui/sdk/service/patpat/ZuiPatpatService;

    const p2, 0x3e99999a    # 0.3f

    .line 633
    invoke-static {p2}, Lcom/zui/gallery/util/GalleryUtils;->meterToPixel(F)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/zui/gallery/app/AlbumPage;->mUserDistance:F

    .line 634
    invoke-direct {p0}, Lcom/zui/gallery/app/AlbumPage;->initializeViews()V

    .line 635
    invoke-direct {p0, p1}, Lcom/zui/gallery/app/AlbumPage;->initializeData(Landroid/os/Bundle;)V

    .line 637
    invoke-direct {p0}, Lcom/zui/gallery/app/AlbumPage;->updateHeadRoot()V

    const-string p2, "get-content"

    const/4 v0, 0x0

    .line 638
    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p0, Lcom/zui/gallery/app/AlbumPage;->mGetContent:Z

    const-string p2, "auto-select-all"

    .line 640
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 641
    iget-object p2, p0, Lcom/zui/gallery/app/AlbumPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {p2}, Lcom/zui/gallery/ui/SelectionManager;->selectAll()V

    .line 643
    :cond_0
    iget-boolean p2, p0, Lcom/zui/gallery/app/AlbumPage;->mGetContent:Z

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->isGetMultContent()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 644
    invoke-direct {p0}, Lcom/zui/gallery/app/AlbumPage;->addGetContentBottomView()V

    .line 645
    iget-object p2, p0, Lcom/zui/gallery/app/AlbumPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {p2}, Lcom/zui/gallery/ui/SelectionManager;->enterSelectionMode()V

    .line 647
    :cond_1
    iget-object p2, p0, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    .line 648
    invoke-virtual {p2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getStateManager()Lcom/zui/gallery/app/StateManager;

    move-result-object p2

    const-class v1, Lcom/zui/gallery/app/FilmstripPage;

    invoke-virtual {p2, v1}, Lcom/zui/gallery/app/StateManager;->hasStateClass(Ljava/lang/Class;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/zui/gallery/app/AlbumPage;->mLaunchedFromPhotoPage:Z

    const-string p2, "app-bridge"

    .line 649
    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p0, Lcom/zui/gallery/app/AlbumPage;->mInCameraApp:Z

    const-string p2, "isSecurityLauncher"

    .line 651
    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/zui/gallery/app/AlbumPage;->isSecurityLauncher:Z

    .line 652
    new-instance p1, Lcom/zui/gallery/app/AlbumPage$3;

    iget-object p2, p0, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getGLRoot()Lcom/zui/gallery/ui/GLRoot;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/zui/gallery/app/AlbumPage$3;-><init>(Lcom/zui/gallery/app/AlbumPage;Lcom/zui/gallery/ui/GLRoot;)V

    iput-object p1, p0, Lcom/zui/gallery/app/AlbumPage;->mHandler:Landroid/os/Handler;

    .line 680
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/zui/gallery/app/AlbumPage;->lastBottomBarClickedTime:J

    return-void
.end method

.method protected onCreateActionBar(Landroid/view/Menu;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method protected onCustomScrollBarPostionChange(II)V
    .locals 1

    .line 2064
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->mSlotView:Lcom/zui/gallery/ui/SlotView;

    if-eqz v0, :cond_0

    .line 2065
    invoke-virtual {v0, p1, p2}, Lcom/zui/gallery/ui/SlotView;->onCustomScrollBarPostionChange(II)V

    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 812
    invoke-super {p0}, Lcom/zui/gallery/app/ActivityState;->onDestroy()V

    .line 813
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->mAlbumDataAdapter:Lcom/zui/gallery/app/AlbumDataLoader;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 814
    invoke-virtual {v0, v1}, Lcom/zui/gallery/app/AlbumDataLoader;->setLoadingListener(Lcom/zui/gallery/app/LoadingListener;)V

    .line 816
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    if-eqz v0, :cond_1

    .line 817
    invoke-virtual {v0}, Lcom/zui/gallery/ui/SelectionManager;->leaveSelectionMode()V

    .line 819
    :cond_1
    invoke-direct {p0}, Lcom/zui/gallery/app/AlbumPage;->closeFloatDialog()V

    .line 820
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->mActionModeHandler:Lcom/zui/gallery/ui/ActionModeHandler;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/ActionModeHandler;->destroy()V

    .line 821
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->mAlbumView:Lcom/zui/gallery/ui/AlbumSlotRenderer;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/AlbumSlotRenderer;->destory()V

    return-void
.end method

.method public onLongTap(ILandroid/graphics/Rect;I)V
    .locals 2

    .line 587
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AlbumPagemGetContent:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/zui/gallery/app/AlbumPage;->mGetContent:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mActivity.isThirdAppCall():"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->isThirdAppCall()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "mSelectionManager.inSelectionMode()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/gallery/app/AlbumPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    .line 588
    invoke-virtual {v1}, Lcom/zui/gallery/ui/SelectionManager;->inSelectionMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lenovooneXX"

    .line 587
    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->mAlbumDataAdapter:Lcom/zui/gallery/app/AlbumDataLoader;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/app/AlbumDataLoader;->get(I)Lcom/zui/gallery/data/MediaItem;

    move-result-object p1

    .line 601
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 607
    :cond_1
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {p1}, Lcom/zui/gallery/data/MediaItem;->getPath()Lcom/zui/gallery/data/Path;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zui/gallery/ui/SelectionManager;->toggle(Lcom/zui/gallery/data/Path;)V

    .line 614
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->setAddToPrivacyIfEnnable(Z)V

    .line 615
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->mSlotView:Lcom/zui/gallery/ui/SlotView;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/SlotView;->invalidate()V

    .line 618
    :goto_0
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-static {v0, p1, p3}, Lcom/zui/lenovoone/LenovoOneHelper;->drag(Lcom/zui/gallery/app/AbstractGalleryActivity;Lcom/zui/gallery/data/MediaItem;I)Z

    move-result p3

    if-eqz p3, :cond_2

    return-void

    .line 622
    :cond_2
    iput-object p1, p0, Lcom/zui/gallery/app/AlbumPage;->longTapItem:Lcom/zui/gallery/data/MediaItem;

    .line 623
    iput-object p2, p0, Lcom/zui/gallery/app/AlbumPage;->longTapItemAbslateRect:Landroid/graphics/Rect;

    .line 626
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumPage;->mSlotView:Lcom/zui/gallery/ui/SlotView;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/SlotView;->invalidate()V

    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 772
    invoke-super {p0}, Lcom/zui/gallery/app/ActivityState;->onPause()V

    .line 773
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->mZuiPatpatService:Lcom/zui/sdk/service/patpat/ZuiPatpatService;

    if-eqz v0, :cond_0

    .line 774
    iget-object v1, p0, Lcom/zui/gallery/app/AlbumPage;->mListener:Lcom/zui/sdk/service/patpat/ZuiPatpatService$PatpatListener;

    invoke-virtual {v0, v1}, Lcom/zui/sdk/service/patpat/ZuiPatpatService;->removeListener(Lcom/zui/sdk/service/patpat/ZuiPatpatService$PatpatListener;)V

    :cond_0
    const/4 v0, 0x0

    .line 775
    iput-boolean v0, p0, Lcom/zui/gallery/app/AlbumPage;->mIsActive:Z

    .line 781
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->mAlbumView:Lcom/zui/gallery/ui/AlbumSlotRenderer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zui/gallery/ui/AlbumSlotRenderer;->setSlotFilter(Lcom/zui/gallery/ui/AlbumSlotRenderer$SlotFilter;)V

    .line 782
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->mActionModeHandler:Lcom/zui/gallery/ui/ActionModeHandler;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/ActionModeHandler;->pause()V

    .line 783
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->mAlbumDataAdapter:Lcom/zui/gallery/app/AlbumDataLoader;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AlbumDataLoader;->pause()V

    .line 785
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->mAlbumView:Lcom/zui/gallery/ui/AlbumSlotRenderer;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/AlbumSlotRenderer;->pause()V

    .line 793
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->mSyncTask:Lcom/zui/gallery/util/Future;

    if-eqz v0, :cond_1

    .line 794
    invoke-interface {v0}, Lcom/zui/gallery/util/Future;->cancel()V

    .line 795
    iput-object v1, p0, Lcom/zui/gallery/app/AlbumPage;->mSyncTask:Lcom/zui/gallery/util/Future;

    const/4 v0, 0x2

    .line 796
    invoke-direct {p0, v0}, Lcom/zui/gallery/app/AlbumPage;->clearLoadingBit(I)V

    .line 798
    :cond_1
    invoke-direct {p0}, Lcom/zui/gallery/app/AlbumPage;->unUpdateViewMargin()V

    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 717
    invoke-super {p0}, Lcom/zui/gallery/app/ActivityState;->onResume()V

    .line 718
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->mZuiPatpatService:Lcom/zui/sdk/service/patpat/ZuiPatpatService;

    if-eqz v0, :cond_0

    .line 719
    iget-object v1, p0, Lcom/zui/gallery/app/AlbumPage;->mListener:Lcom/zui/sdk/service/patpat/ZuiPatpatService$PatpatListener;

    invoke-virtual {v0, v1}, Lcom/zui/sdk/service/patpat/ZuiPatpatService;->addListener(Lcom/zui/sdk/service/patpat/ZuiPatpatService$PatpatListener;)V

    :cond_0
    const/4 v0, 0x1

    .line 720
    iput-boolean v0, p0, Lcom/zui/gallery/app/AlbumPage;->mIsActive:Z

    .line 721
    iget-object v1, p0, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getTransitionStore()Lcom/zui/gallery/app/TransitionStore;

    move-result-object v1

    const-string v2, "resume_animation"

    invoke-virtual {v1, v2}, Lcom/zui/gallery/app/TransitionStore;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/ui/PhotoFallbackEffect;

    iput-object v1, p0, Lcom/zui/gallery/app/AlbumPage;->mResumeEffect:Lcom/zui/gallery/ui/PhotoFallbackEffect;

    if-eqz v1, :cond_1

    .line 723
    iget-object v2, p0, Lcom/zui/gallery/app/AlbumPage;->mAlbumView:Lcom/zui/gallery/ui/AlbumSlotRenderer;

    invoke-virtual {v2, v1}, Lcom/zui/gallery/ui/AlbumSlotRenderer;->setSlotFilter(Lcom/zui/gallery/ui/AlbumSlotRenderer$SlotFilter;)V

    .line 724
    iget-object v1, p0, Lcom/zui/gallery/app/AlbumPage;->mResumeEffect:Lcom/zui/gallery/ui/PhotoFallbackEffect;

    iget-object v2, p0, Lcom/zui/gallery/app/AlbumPage;->mPositionProvider:Lcom/zui/gallery/ui/PhotoFallbackEffect$PositionProvider;

    invoke-virtual {v1, v2}, Lcom/zui/gallery/ui/PhotoFallbackEffect;->setPositionProvider(Lcom/zui/gallery/ui/PhotoFallbackEffect$PositionProvider;)V

    .line 725
    iget-object v1, p0, Lcom/zui/gallery/app/AlbumPage;->mResumeEffect:Lcom/zui/gallery/ui/PhotoFallbackEffect;

    invoke-virtual {v1}, Lcom/zui/gallery/ui/PhotoFallbackEffect;->start()V

    .line 728
    :cond_1
    iget-object v1, p0, Lcom/zui/gallery/app/AlbumPage;->mRootPane:Lcom/zui/gallery/ui/GLView;

    invoke-virtual {p0, v1}, Lcom/zui/gallery/app/AlbumPage;->setContentPane(Lcom/zui/gallery/ui/GLView;)V

    .line 731
    invoke-direct {p0, v0}, Lcom/zui/gallery/app/AlbumPage;->setLoadingBit(I)V

    const/4 v1, 0x0

    .line 732
    iput-boolean v1, p0, Lcom/zui/gallery/app/AlbumPage;->mLoadingFailed:Z

    .line 733
    iget-object v2, p0, Lcom/zui/gallery/app/AlbumPage;->mAlbumDataAdapter:Lcom/zui/gallery/app/AlbumDataLoader;

    invoke-virtual {v2}, Lcom/zui/gallery/app/AlbumDataLoader;->resume()V

    .line 735
    iget-object v2, p0, Lcom/zui/gallery/app/AlbumPage;->mAlbumView:Lcom/zui/gallery/ui/AlbumSlotRenderer;

    invoke-virtual {v2}, Lcom/zui/gallery/ui/AlbumSlotRenderer;->resume()V

    .line 736
    iget-object v2, p0, Lcom/zui/gallery/app/AlbumPage;->mAlbumView:Lcom/zui/gallery/ui/AlbumSlotRenderer;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/zui/gallery/ui/AlbumSlotRenderer;->setPressedIndex(I)V

    .line 737
    iget-boolean v2, p0, Lcom/zui/gallery/app/AlbumPage;->mGetContent:Z

    if-nez v2, :cond_2

    .line 738
    iget-object v2, p0, Lcom/zui/gallery/app/AlbumPage;->mActionModeHandler:Lcom/zui/gallery/ui/ActionModeHandler;

    invoke-virtual {v2}, Lcom/zui/gallery/ui/ActionModeHandler;->resume()V

    .line 740
    :cond_2
    iget-boolean v2, p0, Lcom/zui/gallery/app/AlbumPage;->mInitialSynced:Z

    if-nez v2, :cond_3

    const/4 v2, 0x2

    .line 741
    invoke-direct {p0, v2}, Lcom/zui/gallery/app/AlbumPage;->setLoadingBit(I)V

    .line 742
    iget-object v2, p0, Lcom/zui/gallery/app/AlbumPage;->mMediaSet:Lcom/zui/gallery/data/MediaSet;

    invoke-virtual {v2, p0}, Lcom/zui/gallery/data/MediaSet;->requestSync(Lcom/zui/gallery/data/MediaSet$SyncListener;)Lcom/zui/gallery/util/Future;

    move-result-object v2

    iput-object v2, p0, Lcom/zui/gallery/app/AlbumPage;->mSyncTask:Lcom/zui/gallery/util/Future;

    .line 744
    :cond_3
    iget-object v2, p0, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    sget-object v3, Lcom/zui/gallery/app/TabManager$TabIndex;->TAB_ALBUM:Lcom/zui/gallery/app/TabManager$TabIndex;

    invoke-virtual {v2, v3}, Lcom/zui/gallery/app/AbstractGalleryActivity;->updateTabIndex(Lcom/zui/gallery/app/TabManager$TabIndex;)V

    .line 745
    iget-object v2, p0, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    iget-boolean v3, p0, Lcom/zui/gallery/app/AlbumPage;->mGetContent:Z

    xor-int/2addr v3, v0

    invoke-virtual {v2, v3}, Lcom/zui/gallery/app/AbstractGalleryActivity;->showTab(Z)V

    .line 747
    iget-boolean v2, p0, Lcom/zui/gallery/app/AlbumPage;->mGetContent:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->isGetMultContent()Z

    move-result v2

    if-nez v2, :cond_4

    .line 748
    iget-object v2, p0, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v2, v1, v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->initScrollBarMarginTopAndBottom(II)V

    goto :goto_0

    .line 750
    :cond_4
    iget-object v2, p0, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    iget-object v3, p0, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getTabBarHeight()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Lcom/zui/gallery/app/AbstractGalleryActivity;->initScrollBarMarginTopAndBottom(II)V

    .line 752
    :goto_0
    iget-object v1, p0, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v1, v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->showScrollBar(Z)V

    .line 753
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->showHeader()V

    .line 754
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->mSlotView:Lcom/zui/gallery/ui/SlotView;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/SlotView;->resume()V

    .line 756
    invoke-direct {p0}, Lcom/zui/gallery/app/AlbumPage;->initTitleBar()V

    .line 757
    invoke-direct {p0}, Lcom/zui/gallery/app/AlbumPage;->updateTitleBar()V

    .line 758
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-static {v0}, Lcom/zui/gallery/app/Config$AlbumPage;->get(Landroid/content/Context;)Lcom/zui/gallery/app/Config$AlbumPage;

    move-result-object v0

    .line 759
    iget-object v1, p0, Lcom/zui/gallery/app/AlbumPage;->mSlotView:Lcom/zui/gallery/ui/SlotView;

    iget-object v0, v0, Lcom/zui/gallery/app/Config$AlbumPage;->slotViewSpec:Lcom/zui/gallery/ui/SlotView$Spec;

    invoke-virtual {v1, v0}, Lcom/zui/gallery/ui/SlotView;->setSlotSpec(Lcom/zui/gallery/ui/SlotView$Spec;)V

    .line 760
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->mAlbumView:Lcom/zui/gallery/ui/AlbumSlotRenderer;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/AlbumSlotRenderer;->resume()V

    .line 761
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->mActionModeHandler:Lcom/zui/gallery/ui/ActionModeHandler;

    if-eqz v0, :cond_6

    .line 762
    iget-object v1, p0, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getEditTitleBar()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lcom/zui/gallery/ui/ActionModeHandler;->setActionModeView(Landroid/view/ViewGroup;)V

    .line 763
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->mActionModeHandler:Lcom/zui/gallery/ui/ActionModeHandler;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/ActionModeHandler;->isActionModeIsShowing()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 764
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->mActionModeHandler:Lcom/zui/gallery/ui/ActionModeHandler;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/ActionModeHandler;->startActionMode()V

    .line 766
    :cond_5
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->mActionModeHandler:Lcom/zui/gallery/ui/ActionModeHandler;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/ActionModeHandler;->resume()V

    :cond_6
    return-void
.end method

.method protected onScrollBarMaxLengthAvailable(I)V
    .locals 1

    .line 2071
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->mSlotView:Lcom/zui/gallery/ui/SlotView;

    if-eqz v0, :cond_0

    .line 2072
    invoke-virtual {v0, p1}, Lcom/zui/gallery/ui/SlotView;->onScrollBarMaxLengthAvailable(I)V

    :cond_0
    return-void
.end method

.method public onSelectionChange(Lcom/zui/gallery/data/Path;Z)V
    .locals 6

    .line 1085
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/SelectionManager;->getSelectedCount()I

    move-result v0

    .line 1086
    iget-boolean v1, p0, Lcom/zui/gallery/app/AlbumPage;->mGetContent:Z

    if-eqz v1, :cond_0

    .line 1087
    invoke-direct {p0, v0}, Lcom/zui/gallery/app/AlbumPage;->updateGetContentBottomView(I)V

    goto :goto_0

    .line 1089
    :cond_0
    iget-object v1, p0, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0006

    invoke-virtual {v1, v2, v0}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v1

    .line 1091
    iget-object v2, p0, Lcom/zui/gallery/app/AlbumPage;->mActionModeHandler:Lcom/zui/gallery/ui/ActionModeHandler;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/zui/gallery/ui/ActionModeHandler;->setTitle(Ljava/lang/String;)V

    .line 1092
    iget-object v1, p0, Lcom/zui/gallery/app/AlbumPage;->mActionModeHandler:Lcom/zui/gallery/ui/ActionModeHandler;

    invoke-virtual {v1, p1, p2}, Lcom/zui/gallery/ui/ActionModeHandler;->updateSupportedOperation(Lcom/zui/gallery/data/Path;Z)V

    .line 1095
    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/zui/gallery/app/AlbumPage;->countMax(Lcom/zui/gallery/data/Path;I)V

    .line 1096
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onSelectionChange == "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "xxx"

    invoke-static {p2, p1}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSelectionModeChange(I)V
    .locals 1

    .line 986
    invoke-direct {p0, p1}, Lcom/zui/gallery/app/AlbumPage;->selectMode(I)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_6

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1016
    :cond_0
    iget-boolean p1, p0, Lcom/zui/gallery/app/AlbumPage;->mGetContent:Z

    if-nez p1, :cond_1

    .line 1017
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumPage;->mActionModeHandler:Lcom/zui/gallery/ui/ActionModeHandler;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/ActionModeHandler;->updateSupportedOperation()V

    .line 1019
    :cond_1
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumPage;->mRootPane:Lcom/zui/gallery/ui/GLView;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/GLView;->invalidate()V

    goto :goto_0

    .line 1008
    :cond_2
    iget-boolean p1, p0, Lcom/zui/gallery/app/AlbumPage;->mGetContent:Z

    if-nez p1, :cond_3

    .line 1009
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumPage;->mActionModeHandler:Lcom/zui/gallery/ui/ActionModeHandler;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/ActionModeHandler;->updateSupportedOperation()V

    .line 1011
    :cond_3
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumPage;->mRootPane:Lcom/zui/gallery/ui/GLView;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/GLView;->invalidate()V

    goto :goto_0

    .line 999
    :cond_4
    iget-boolean p1, p0, Lcom/zui/gallery/app/AlbumPage;->mGetContent:Z

    if-nez p1, :cond_5

    .line 1000
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumPage;->mActionModeHandler:Lcom/zui/gallery/ui/ActionModeHandler;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/ActionModeHandler;->finishActionMode()V

    .line 1002
    :cond_5
    invoke-direct {p0}, Lcom/zui/gallery/app/AlbumPage;->initTitleBar()V

    .line 1003
    invoke-direct {p0}, Lcom/zui/gallery/app/AlbumPage;->updateTitleBar()V

    .line 1004
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumPage;->mRootPane:Lcom/zui/gallery/ui/GLView;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/GLView;->invalidate()V

    goto :goto_0

    .line 989
    :cond_6
    iget-boolean p1, p0, Lcom/zui/gallery/app/AlbumPage;->mGetContent:Z

    if-nez p1, :cond_7

    .line 990
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumPage;->mActionModeHandler:Lcom/zui/gallery/ui/ActionModeHandler;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/ActionModeHandler;->startActionMode()V

    :cond_7
    const/4 p1, 0x0

    .line 992
    invoke-virtual {p0, p1}, Lcom/zui/gallery/app/AlbumPage;->performHapticFeedback(I)V

    .line 994
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumPage;->mRootPane:Lcom/zui/gallery/ui/GLView;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/GLView;->invalidate()V

    :goto_0
    return-void
.end method

.method protected onStateResult(IILandroid/content/Intent;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 p3, 0x3

    if-eq p1, p3, :cond_1

    const/16 p3, 0x22b8

    if-eq p1, p3, :cond_0

    goto :goto_0

    .line 977
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onStateResult , path is "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/zui/gallery/app/AlbumPage;->mCurrentPhoto:Lcom/zui/gallery/data/MediaItem;

    invoke-virtual {p3}, Lcom/zui/gallery/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "privatekey"

    invoke-static {p3, p1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x1

    if-ne p2, p1, :cond_6

    .line 979
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumPage;->mCurrentPhoto:Lcom/zui/gallery/data/MediaItem;

    invoke-virtual {p1}, Lcom/zui/gallery/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/zui/gallery/app/AlbumPage;->mCurrentPhoto:Lcom/zui/gallery/data/MediaItem;

    invoke-direct {p0, p1, p2}, Lcom/zui/gallery/app/AlbumPage;->startAddToPrivacyGroup(Ljava/lang/String;Lcom/zui/gallery/data/MediaItem;)V

    goto :goto_0

    .line 973
    :cond_1
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumPage;->mSlotView:Lcom/zui/gallery/ui/SlotView;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/SlotView;->startRisingAnimation()V

    goto :goto_0

    :cond_2
    if-nez p3, :cond_3

    return-void

    :cond_3
    const-string p1, "return-index-hint"

    .line 968
    invoke-virtual {p3, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/zui/gallery/app/AlbumPage;->mFocusIndex:I

    .line 969
    iget-object p2, p0, Lcom/zui/gallery/app/AlbumPage;->mSlotView:Lcom/zui/gallery/ui/SlotView;

    invoke-virtual {p2, p1}, Lcom/zui/gallery/ui/SlotView;->makeSlotVisible(I)V

    goto :goto_0

    :cond_4
    if-nez p3, :cond_5

    return-void

    :cond_5
    const-string p1, "photo-index"

    .line 961
    invoke-virtual {p3, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/zui/gallery/app/AlbumPage;->mFocusIndex:I

    .line 962
    iget-object p2, p0, Lcom/zui/gallery/app/AlbumPage;->mSlotView:Lcom/zui/gallery/ui/SlotView;

    invoke-virtual {p2, p1}, Lcom/zui/gallery/ui/SlotView;->setCenterIndex(I)V

    :cond_6
    :goto_0
    return-void
.end method

.method public onSyncDone(Lcom/zui/gallery/data/MediaSet;I)V
    .locals 2

    .line 1117
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

    const-string v0, "AlbumPage"

    invoke-static {v0, p1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1119
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    new-instance v0, Lcom/zui/gallery/app/AlbumPage$5;

    invoke-direct {v0, p0, p2}, Lcom/zui/gallery/app/AlbumPage$5;-><init>(Lcom/zui/gallery/app/AlbumPage;I)V

    invoke-virtual {p1, v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public showLoadingDialog()V
    .locals 3

    .line 1518
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->mProgressDialogX:Lzui/app/ProgressDialogX;

    if-nez v0, :cond_0

    .line 1519
    new-instance v0, Lzui/app/ProgressDialogX;

    iget-object v1, p0, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-direct {v0, v1}, Lzui/app/ProgressDialogX;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->mProgressDialogX:Lzui/app/ProgressDialogX;

    .line 1520
    iget-object v1, p0, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100198

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lzui/app/ProgressDialogX;->setMessage(Ljava/lang/CharSequence;)V

    .line 1521
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->mProgressDialogX:Lzui/app/ProgressDialogX;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lzui/app/ProgressDialogX;->setCancelable(Z)V

    .line 1523
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->mProgressDialogX:Lzui/app/ProgressDialogX;

    invoke-virtual {v0}, Lzui/app/ProgressDialogX;->show()V

    return-void
.end method

.method protected stopScroll()V
    .locals 1

    .line 2057
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->mSlotView:Lcom/zui/gallery/ui/SlotView;

    if-eqz v0, :cond_0

    .line 2058
    invoke-virtual {v0}, Lcom/zui/gallery/ui/SlotView;->stopScrolling()V

    :cond_0
    return-void
.end method

.method protected updateTitleBarVisibility(Landroid/content/res/Configuration;)V
    .locals 3

    .line 1758
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getTitleBar()Landroid/view/View;

    move-result-object p1

    .line 1759
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getHeadRoot()Landroid/view/View;

    move-result-object v0

    .line 1761
    iget-object v1, p0, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getConfiguration()Landroid/content/res/Configuration;

    iget-object v1, p0, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getActivityOrientation()I

    move-result v1

    const/4 v2, 0x2

    if-ne v2, v1, :cond_0

    iget-object v1, p0, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-static {v1}, Lcom/zui/gallery/util/DeviceTypeUtils;->isPad(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    const v1, 0x7f0701ff

    .line 1763
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :cond_0
    const v1, 0x7f0501dc

    .line 1767
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_0
    const v0, 0x7f080370

    .line 1772
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    .line 1773
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method
